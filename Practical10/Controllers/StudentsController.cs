using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using StudentManagementAPI.Data;
using StudentManagementAPI.Models;

namespace StudentManagementAPI.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class StudentsController : ControllerBase
    {
        private readonly AppDbContext _context;

        public StudentsController(AppDbContext context)
        {
            _context = context;
        }

        // GET: api/students  → Get all students
        [HttpGet]
        public async Task<IActionResult> GetAll()
        {
            var students = await _context.Students.ToListAsync();
            return Ok(students);
        }

        // GET: api/students/5  → Get student by Id
        [HttpGet("{id}")]
        public async Task<IActionResult> GetById(int id)
        {
            var student = await _context.Students.FindAsync(id);
            if (student == null)
                return NotFound(new { message = $"Student with Id {id} not found." });

            return Ok(student);
        }

        // POST: api/students  → Add new student
        [HttpPost]
        public async Task<IActionResult> Create([FromBody] Student student)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            student.Id = 0; // Always ignore client-supplied Id; SQL Server auto-generates it
            _context.Students.Add(student);
            await _context.SaveChangesAsync();

            return CreatedAtAction(nameof(GetById), new { id = student.Id }, student);
        }

        // PUT: api/students/5  → Update existing student
        [HttpPut("{id}")]
        public async Task<IActionResult> Update(int id, [FromBody] Student updatedStudent)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            var student = await _context.Students.FindAsync(id);
            if (student == null)
                return NotFound(new { message = $"Student with Id {id} not found." });

            student.Name   = updatedStudent.Name;
            student.Email  = updatedStudent.Email;
            student.Age    = updatedStudent.Age;
            student.Course = updatedStudent.Course;

            await _context.SaveChangesAsync();
            return Ok(student);
        }

        // DELETE: api/students/5  → Delete student
        [HttpDelete("{id}")]
        public async Task<IActionResult> Delete(int id)
        {
            var student = await _context.Students.FindAsync(id);
            if (student == null)
                return NotFound(new { message = $"Student with Id {id} not found." });

            _context.Students.Remove(student);
            await _context.SaveChangesAsync();

            return Ok(new { message = $"Student with Id {id} deleted successfully." });
        }
    }
}

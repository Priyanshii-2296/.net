using System;

namespace Practical1
{
    class Student
    {
        public int Aid;
        private string Name;
        protected string Course;
        internal int Fee;
        protected internal int Sem;
        private bool IsScholarship;

        public Student()
        {
            Aid = 0;
            Name = "Unknown";
            Course = "N/A";
            Fee = 0;
            Sem = 0;
            IsScholarship = false;
        }

        public void Accept()
        {
            Console.Write("Enter Admission ID: ");
            Aid = Convert.ToInt32(Console.ReadLine());

            Console.Write("Enter Student Name: ");
            Name = Console.ReadLine();

            Console.Write("Enter Course: ");
            Course = Console.ReadLine();

            Console.Write("Enter Fee: ");
            Fee = Convert.ToInt32(Console.ReadLine());

            Console.Write("Enter Semester: ");
            Sem = Convert.ToInt32(Console.ReadLine());

            if (Fee > 40000)
                IsScholarship = true;
            else
                IsScholarship = false;
        }

        public void Display()
        {
            Console.WriteLine("\n===== STUDENT DETAILS =====");
            Console.WriteLine("Admission ID : " + Aid);
            Console.WriteLine("Name         : " + Name);
            Console.WriteLine("Course       : " + Course);
            Console.WriteLine("Fee          : " + Fee);
            Console.WriteLine("Semester     : " + Sem);

            Console.WriteLine("Scholarship  : " +
                (IsScholarship ? "Eligible" : "Not Eligible"));
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            Student obj1 = new Student();
            obj1.Accept();
            obj1.Display();

            Console.ReadKey();
        }
    }
}
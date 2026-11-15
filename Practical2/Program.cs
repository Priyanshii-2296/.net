using System;
namespace Practical2
{
    interface Ipayroll
    {
        void CalculateSalary();
    }
    class Employee
    {
        protected string name;
        protected int id;
        protected double salary;
        protected double netSalary;

        public void GetDetails()
        {
            Console.Write("Enter Employee Name: ");
            name = Console.ReadLine();

            Console.Write("Enter Employee ID: ");
            id = Convert.ToInt32(Console.ReadLine());

            Console.Write("Enter Basic Salary: ");
            salary = Convert.ToDouble(Console.ReadLine());
        }

        public void DisplayDetails()
        {
            Console.WriteLine("\n------ Employee Details ------");
            Console.WriteLine("Name       : " + name);
            Console.WriteLine("ID         : " + id);
            Console.WriteLine("Salary     : " + salary);
            Console.WriteLine("Net Salary : " + netSalary);
        }
    }
    class Femployee : Employee, Ipayroll
    {
        public void CalculateSalary()
        {
            netSalary = salary + (salary * 0.10) + (salary * 0.20);
        }
    }

    class Pemployee : Employee, Ipayroll
    {
        public int workHours;
        public double hourlyRate;
        public void CalculateSalary()
        {
            salary = workHours * hourlyRate;
            netSalary = salary;
        }
    }

    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("1. Full-Time Employee");
            Console.WriteLine("2. Part-Time Employee");
            Console.Write("Enter Choice: ");
            int choice = Convert.ToInt32(Console.ReadLine());

            if (choice == 1)
            {
                Femployee f = new Femployee();
                f.GetDetails();
                f.CalculateSalary();
                f.DisplayDetails();
            }
            else if (choice == 2)
            {
                Pemployee p = new Pemployee();
                p.GetDetails();
                Console.Write("Enter Work Hours: ");
                p.workHours = Convert.ToInt32(Console.ReadLine());

                Console.Write("Enter Hourly Rate: ");
                p.hourlyRate = Convert.ToDouble(Console.ReadLine());
                p.CalculateSalary();
                p.DisplayDetails();
            }
            else
            {
                Console.WriteLine("Invalid Choice");
            }
        }
    }
}

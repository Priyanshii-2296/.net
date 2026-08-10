using System;
using MyLibrary;

namespace ConsoleApp1
{
    class ChildOutside : Parent
    {
        public void Test()
        {
            Console.WriteLine("Inside Console App (Derived Class)");

            // InternalMethod();          // ❌ Not Accessible

            ProtectedInternalMethod();    // ✔ Accessible

            // PrivateProtectedMethod();  // ❌ Not Accessible

            PublicMethod();               // ✔ Accessible
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            Parent p = new Parent();

            Console.WriteLine("Using Parent Object");

            // p.InternalMethod();          // ❌ Not Accessible

            // p.ProtectedInternalMethod(); // ❌ Not Accessible

            // p.PrivateProtectedMethod();  // ❌ Not Accessible

            p.PublicMethod();              // ✔ Accessible

            Console.WriteLine();

            ChildOutside c = new ChildOutside();
            c.Test();
        }
    }
}
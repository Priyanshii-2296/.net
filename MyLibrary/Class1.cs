using System;

namespace MyLibrary
{
    public class Class1
    {
        internal void InternalMethod()
        {
            Console.WriteLine("Internal Method");
        }

        protected internal void ProtectedInternalMethod()
        {
            Console.WriteLine("Protected Internal Method");
        }

        private protected void PrivateProtectedMethod()
        {
            Console.WriteLine("Private Protected Method");
        }

        public void PublicMethod()
        {
            Console.WriteLine("Public Method");
        }
    }

    public class Class2 : Class1
    {
        public void Test()
        {
            Console.WriteLine("Inside Class Library (Child)");

            InternalMethod();
            ProtectedInternalMethod();
            PrivateProtectedMethod();
            PublicMethod();
        }
    }
}
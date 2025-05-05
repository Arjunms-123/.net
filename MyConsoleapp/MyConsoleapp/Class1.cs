using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyConsoleapp
{
    internal class Class1
    {
        int a;
        int b;
        int c;
        public Class1()
        {
            Console.WriteLine("My constructor");
            a = 10;
            b = 20;
        }
        public void add_values()
        {
            c = a + b;
            Console.WriteLine("The sum is" + c);
        }
        static void Main(string[] args)
        {
            Class1 x = new Class1();
            x.add_values();
        }
    }
}


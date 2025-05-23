using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyConsoleapp
{
    internal class Class4
    {
        public void checkEvenOdd()
        {
            int a = Convert.ToInt32(Console.ReadLine());
            if (a % 2 == 0)
            {
                Console.WriteLine("The number is even");
            }
            else
            {
                Console.WriteLine("The number is odd");
            }
        }
        static void Main(string[] args)
        {
            Class4 p = new Class4();
            p.checkEvenOdd();
        }
    }
}

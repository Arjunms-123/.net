using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyConsoleapp
{
    internal class Class6
    {

        static void Main(string[] args)
        {
            int a, s = 0;
            for(int n = 0; n < 10; n++)
            {
                Console.WriteLine("Accept number");
                a=Convert.ToInt32(Console.ReadLine());
                s = s + a;
            }
            Console.WriteLine("The sum of 10 numbers is = "+s);
        }
    }
}

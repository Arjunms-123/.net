using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyConsoleapp
{
    internal class Class7
    {
        static void Main(string[] args)
        {
            int even=0,odd=0;
            for (int n = 0; n <=10; n++)
            { 
               int a = Convert.ToInt32(Console.ReadLine());
                if (a % 2 == 0)
                {
                    even++;
                }
                else
                {
                    odd++;
                }

            }
            Console.WriteLine("Number of even=" + even);
            Console.WriteLine("Number of even=" + odd);

        }
    }
}


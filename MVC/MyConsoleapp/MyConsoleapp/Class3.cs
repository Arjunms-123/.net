using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyConsoleapp
{
    internal class Class3
    {
        static void Main(string[] args) {
            int a = Convert.ToInt32(Console.ReadLine());
            int b= Convert.ToInt32(Console.ReadLine());
            if(a==b)
            {
                Console.WriteLine("Both are equal");
            }
            else{
                if (a > b)
                {
                    Console.WriteLine("A is greater");
                }
                else
                {
                    Console.WriteLine("B is greater");
                }
            }
        }
    }
}

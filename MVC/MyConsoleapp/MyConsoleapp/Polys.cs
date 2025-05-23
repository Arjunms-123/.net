using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyConsoleapp
{
    internal class Polys
    {
        public void calc()
        {
            Console.WriteLine("calling the first calc function");
        }
        public void calc(string a)
        {
            Console.WriteLine("the value of a is "  + a);
        }
        public bool calc(int b)
        {


            if (b < 0)
            {
                return true;
            }
            else
            {
                return false;

            }
        }
        public int calc(int k, int f) {
            return k + f;

        }
        static void Main(string[] args)
        {

            Polys p = new Polys();
            p.calc();
            Console.WriteLine("Enter the name");
            string s = Console.ReadLine();
            p.calc(s);
            Console.WriteLine("Enter a number");
            int x = Convert.ToInt32(Console.ReadLine());
            bool c;
            c = p.calc(x);
            Console.WriteLine("its" + c);
            Console.WriteLine("Enter numbers:");
            int k=Convert.ToInt32(Console.ReadLine());
            int f=Convert.ToInt32(Console.ReadLine());
            int add= p.calc(k,f);
            Console.WriteLine("The sum is "+add);
            
        }

    }
}

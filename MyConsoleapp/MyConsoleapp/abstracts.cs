using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyConsoleapp
{
    abstract class Shapes
    {
        public abstract void areas();
        public void showdata()
        {
            System.Console.WriteLine("show function");
        }
    }
        class circles : Shapes
        {
            public override void areas()
            {
                int r;
                r = Convert.ToInt32(Console.ReadLine());
                const double pi = 3.14;
                double a = pi * r * r;
                Console.WriteLine("Area of circle is" + a);
            }
        }
        class rectangle : Shapes
        {
            public override void areas()
            {
                double l, b;
                l=Convert.ToDouble(Console.ReadLine());
                b=Convert.ToDouble(Console.ReadLine());
                double rarea = l * b;
                Console.WriteLine("Area of circle is" + rarea);
            }
        } 

        internal class abstracts
        {
            static void Main(string[] args)
            {
                circles c = new circles();
                c.showdata();
                c.areas();
                rectangle r = new rectangle();
                r.areas();
                r.showdata();
            }
        }
    }


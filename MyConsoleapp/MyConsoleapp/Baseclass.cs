using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyConsoleapp
{
    internal class Baseclass1
    {
        public string color = "white";
    }
    internal class Derivedclass : Baseclass1 
    {
        public string brand = "willy";    
    }
    internal class Baseclass
    {
        static void Main(string[] args) 
        {
            Derivedclass cls2= new Derivedclass();
            Console.WriteLine(cls2.brand);
            Console.WriteLine(cls2.color);      
        }
    }
    
        

    }


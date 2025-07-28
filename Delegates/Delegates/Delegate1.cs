using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// What is Delegate ?
// A delegate is a type that represents references to methods with a specific parameter list and return type.
namespace Delegates
{
    internal class Delegate1
    {
        public delegate void MyDelegate();
        public static void Method1()
        {
            Console.WriteLine("Method1 called");
        }

        static void Main(string[] args)
        {
  
            MyDelegate del = new MyDelegate(Method1);
           
            del();
        }
    }
}

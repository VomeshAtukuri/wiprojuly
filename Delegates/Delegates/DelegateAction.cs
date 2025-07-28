using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// What is Action Delegate ?
// An Action delegate is a built-in delegate type in C# that represents a method that takes parameters and does not return a value.
namespace Delegates
{
    internal class DelegateAction
    {
        public static void Add(int x, int y)
        {
            Console.WriteLine(x+y);
        }
        public static void Multiply(int x, int y)
        {
            Console.WriteLine(x*y);
        }

        public static void Main()
        {
            Action<int, int> addAction = Add;
            Action<int, int> multiplyAction = Multiply;
            int a = 5, b = 10;
            addAction(a, b);
            multiplyAction(a, b);
        }
    }
}

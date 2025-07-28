using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

// What is Function Delegate ?
// A function delegate is a delegate that can reference a method with a specific signature, allowing for method calls to be made dynamically.
// The built-in Func<T1, T2, ..., TResult> delegate represents a method that:
// Takes parameters of types T1, T2, ..., etc.
// Returns a result of type TResult

namespace Delegates
{
    internal class DelegateFunction
    {
        
        public static int Add(int x, int y)
        {
            return x + y;
        }
        public static int Multiply(int x, int y)
        {
            return x * y;
        }

        public static void Main()
        {
            Func<int, int, int> addFunc = Add;
            Func<int, int, int> multiplyFunc = Multiply;
            int a = 5, b = 10;
            int sum = addFunc(a, b);
            int product = multiplyFunc(a, b);
            Console.WriteLine($"Sum: {sum}");
            Console.WriteLine($"Product: {product}");
        }
    }
}

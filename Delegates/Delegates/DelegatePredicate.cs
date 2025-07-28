using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Delegates
{
    internal class DelegatePredicate
    {
        public static bool IsEven(int n)
        {
            return n % 2 == 0;
        }

        static void Main()
        {
            Predicate<int> isEvenPredicate = IsEven;

            Console.WriteLine(isEvenPredicate(4)); // True
            Console.WriteLine(isEvenPredicate(7)); // False

            // Use with List.Find()
            List<int> numbers = new List<int> { 1, 3, 5, 6, 7 };
            int firstEven = numbers.Find(isEvenPredicate);
            Console.WriteLine("First even number: " + firstEven); // 6
        }
    }
}

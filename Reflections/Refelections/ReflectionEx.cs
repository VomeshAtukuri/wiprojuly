using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// what is reflection?
// Reflection is a feature in .NET that allows you to inspect and interact with types, methods, properties, and other metadata at runtime.
namespace Refelections
{
    internal class ReflectionEx
    {
        public static void Main(string[] args)
        {
            Type type = typeof(string);
            Console.WriteLine("Type Name: " + type.Name);
            Console.WriteLine("Full Name: " + type.FullName);
            Console.WriteLine("Namespace: " + type.Namespace);
            Console.WriteLine("Base Type: " + type.BaseType);
        }
    }
}

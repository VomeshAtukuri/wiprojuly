using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

// What is Assembly in C#?
// An assembly is a compiled code library used by .NET applications. It can be an executable (.exe) or a dynamic link library (.dll).
namespace Refelections
{
    internal class ReflectionEx3
    {
        public static void Main(string[] args)
        {
            // Example usage:
            Assembly assembly = Assembly.GetExecutingAssembly();
            Type[] types = assembly.GetTypes();
            foreach (Type t in types)
            {
                Console.WriteLine($"Type: {t.Name}");
                MethodInfo[] methods = t.GetMethods();
                foreach (MethodInfo method in methods)
                {
                    Console.WriteLine($"  Method: {method.Name}");
                }
                FieldInfo[] fields = t.GetFields();
                foreach (FieldInfo field in fields)
                {
                    Console.WriteLine($"  Field: {field.Name}");
                }
            }
        }
    }
}

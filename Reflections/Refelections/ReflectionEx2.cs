using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Reflection;
class Test
{
    public int a;
    public string s;
    public void Display()
    {
        Console.WriteLine("a: " + a + ", s: " + s);
    }
}
namespace Refelections
{
    internal class ReflectionEx2
    {
        public static void Main(string[] args)
        {
            Type type = typeof(Test);
            Console.WriteLine("Methods Avaialble in Test Class Are");
            foreach (MethodInfo mi in type.GetMethods())
            {
                Console.WriteLine(mi.Name);
            }
            Console.WriteLine("Fields Avaialble in Test Class Are");
            foreach (FieldInfo pi in type.GetFields())
            {
                Console.WriteLine(pi.Name);
            }
        }

}
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Refelections
{
    internal class Program
    {
        public const string Version = "1.0.0";
        public string Author = "Vomesh";
        public void DisplayInfo()
        {
            Console.WriteLine($"Version: {Version}");
            Console.WriteLine($"Author: {Author}");
        }
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World");
        }
    }
}

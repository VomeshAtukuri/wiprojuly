using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Example
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int? count = null;
            Console.WriteLine("Def Value  " + count.GetValueOrDefault());
            count = 5;
            Console.WriteLine("Upd Value  " + count.GetValueOrDefault());
    }
    }
}

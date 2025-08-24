using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Calculator
{
    public class Calculator
    {
        public double Add(double x, double y) { return x + y; }

        public double Subtract(double x, double y) {return x - y; }

        public  double Multiply(double x, double y) { return x * y; }

        public double Divide(double x, double y) { 
            if (y == 0) 
                throw new DivideByZeroException("Denominator cannot be zero.");
            return x / y;
        }
    }
}

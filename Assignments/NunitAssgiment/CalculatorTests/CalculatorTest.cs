using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NUnit.Framework;
using Calculator;

namespace Calculator.Tests
{
    public class CalculatorTest
    {
        private Calculator calc;

        [SetUp]
        public void Setup()
        {
            calc = new Calculator();
        }

        [Test]
        public void Add_ShouldReturnCorrectResult()
        {
            double result = calc.Add(5, 3);
            Assert.AreEqual(8, result);
        }

        [Test]
        public void Subtract_ShouldReturnCorrectResult()
        {
            double result = calc.Subtract(10, 4);
            Assert.AreEqual(6, result);
        }

        [Test]
        public void Multiply_ShouldReturnCorrectResult()
        {
            double result = calc.Multiply(2, 3);
            Assert.AreEqual(6, result);
        }

        [Test]
        public void Divide_ShouldReturnCorrectResult()
        {
            double result = calc.Divide(10, 2);
            Assert.AreEqual(5, result);
        }

        [Test]
        public void Divide_ByZero_ShouldThrowException()
        {
            Assert.Throws<DivideByZeroException>(() => calc.Divide(10, 0));
        }

        [Test]
        public void Add_WithZero_ShouldReturnSameNumber()
        {
            double result = calc.Add(10, 0);
            Assert.AreEqual(10, result);
        }
    }
}

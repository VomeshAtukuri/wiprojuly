using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DemoEx.Tests
{
    [TestFixture]
    public class DemoTest
    {
        [Test]
        public void Add_TwoPositiveIntegers_ReturnsSum()
        {
            
            Class1 demo = new Class1();
            int a = 5;
            int b = 10;
            int result = demo.Add(a, b);
            Assert.AreEqual(15, result);
        }
        [Test]
        public void Max_ThreeIntegers_ReturnsMaximum()
        {
            Class1 demo = new Class1();
            int a = 5;
            int b = 10;
            int c = 3;
            int result = demo.Max(a, b, c);
            Assert.AreEqual(10, result);
        }
    }
}

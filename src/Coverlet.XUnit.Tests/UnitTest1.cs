using System;
using Xunit;

namespace Coverlet.Tests
{
    public class UnitTest1
    {
        [Fact]
        public void Test1()
        {
            Program.Main(new[] { "" });
        }

        [Fact]
        public void Test2()
        {
            Program.Main(new[] { "","","","" });
        }
    }
}

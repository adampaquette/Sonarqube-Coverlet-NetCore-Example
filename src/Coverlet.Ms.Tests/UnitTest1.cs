using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Coverlet.MsTests
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void Test1()
        {
            Program.Main(new []{""});
        }

        [TestMethod]
        public void Test2()
        {
            Program.Main(new[] { "", "", "", "" });
        }
    }
}

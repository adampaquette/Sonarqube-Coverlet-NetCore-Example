using System;
using System.Xml.Schema;

namespace Coverlet
{
    public class Program
    {
        public static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");

            if (args.Length == 1)
                Console.WriteLine(Method1(2));
            if (args.Length == 2)
                Console.WriteLine("2");
            if (args.Length == 3)
                Console.WriteLine("3");
            if (args.Length == 4)
                Console.WriteLine(Method1(10));
            if (args.Length == 5)
                Console.WriteLine("5");
            if (args.Length == 6)
                Console.WriteLine("6");
            if (args.Length == 7)
                Console.WriteLine("7");
        }

        static int Method1(int number)
        {
            if (number > 5)
                return number / 0;
            return number * 13;
        }
    }
}

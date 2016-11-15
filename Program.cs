using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ServiceModel;

namespace helloServiceHost
{
    class Program
    {
        static void Main()
        {
            using(ServiceHost host =new ServiceHost(typeof(HelloService.HelloService)))
            {
                host.Open();
                Console.WriteLine("writing is done");
                Console.ReadLine();
            }
        }
    }
}

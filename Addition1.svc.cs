using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace My2ndWcfApp
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Addition1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Addition1.svc or Addition1.svc.cs at the Solution Explorer and start debugging.
    public class Addition1 : IAddition1
    {
        public int Add(int no1, int no2)
        {
            return no1 + no2;
        }

        public void DoWork()
        {
        }
    }
}

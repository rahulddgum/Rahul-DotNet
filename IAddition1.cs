using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace My2ndWcfApp
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IAddition1" in both code and config file together.
    [ServiceContract]
    public interface IAddition1
    {
        [OperationContract]
        Int32 Add(Int32 no1,Int32 no2);
    }
}

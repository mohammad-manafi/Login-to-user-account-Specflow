using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AccountManagement
{
    public class DataStore
    {
        public List<Account> Accounts;

        public DataStore(List<Account> accounts)
        {
            Accounts = accounts;
        }
    }
}

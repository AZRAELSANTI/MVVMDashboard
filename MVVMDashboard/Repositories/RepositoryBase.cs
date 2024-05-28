using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MVVMDashboard.Repositories
{
    public abstract class RepositoryBase
    {
        private readonly string connectionString;
        public RepositoryBase()
        {
            connectionString = "Server=WIN-F0U2NJDM669\\SQLEXPRESS; Database=MVVMLoginDb; Integrated Security=true; trustservercertificate=True";
        }
        protected SqlConnection GetConnection()
        {
            return new SqlConnection(connectionString);
        }
    }
}

using System.Data.SqlClient;
using System.Data.SqlTypes;

namespace BranchApi.context
{
    public class dataContext
    {
        public readonly string _connectionstring;
        public dataContext(IConfiguration configuration)
        {
            _connectionstring = configuration.GetConnectionString("SQLconnection");
        }
        public SqlConnection CreateConnection()
        {
            return new SqlConnection(_connectionstring);
        }
    }
}

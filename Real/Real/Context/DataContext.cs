using Microsoft.Data.SqlClient;

namespace Real.Context
{
    public class DataContext
    {
        public readonly string _connectionString;
        private DataContext(IConfiguration configuration)
        {
            _connectionString = configuration.GetConnectionString("SQLConnection");
        }
        public SqlConnection CreateConnecton()
        {
            return new SqlConnection(_connectionString);
        }
    }
}

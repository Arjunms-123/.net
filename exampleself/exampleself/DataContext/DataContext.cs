

namespace exampleself.DataContext
{
    internal class DataContext
    {
        private readonly string _ConnectionString;

        public DataContext(IConfiguration configuration)
        {
            _ConnectionString = configuration.GetConnectionString("SQLConnection");
        }
        public SqlConnection CreateConnection()
        {
            return new SqlConnection(_ConnectionString);
        }
    }
}

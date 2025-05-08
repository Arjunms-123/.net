using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using web.Context;
using web.Models;

namespace web.Controllers
{
    public class EmployeeController : Controller
    {
        private DataContext _context;
        private EmployeeModel _model;

        public EmployeeController(DataContext context, EmployeeModel model)
        {
            _context = context;
            _model = model;
        }

        [HttpGet("GetAllempdetailsrepo", Name = "GetAllempdetailsrepo")]
        public async Task<IActionResult> GetAllempdetailsrepo()
        {
            var cmd = "SELECT * FROM Employee";
            var employees = new List<EmployeeModel>();
            using (var connection = _context.CreateConnection())
            {
                await connection.OpenAsync();
                using var command = new SqlCommand(cmd, connection);
                using (var reader = await command.ExecuteReaderAsync())
                {
                    while (await reader.ReadAsync())
                    {
                        var employee = new EmployeeModel
                        {
                            Id = reader.GetInt32(reader.GetOrdinal("Id")),
                            Name = reader.GetString(reader.GetOrdinal("Name")),
                            Designation = reader.GetString(reader.GetOrdinal("Designation")),
                            Department = reader.GetString(reader.GetOrdinal("Department")),
                        };
                        employees.Add(employee);
                    }
                }
            }
            return Ok(employees);

        }


        [HttpGet("searchById/{id}", Name = "searchById")]
        public async Task<IActionResult> searchById([FromRoute] int id)
        {
            var cmd = "SELECT * FROM Employee WHERE Id=@id";   //column name=@the variable declared
            var employees = new List<EmployeeModel>();
            using (var connection = _context.CreateConnection())
            {
                await connection.OpenAsync();
                using var command = new SqlCommand(cmd, connection);

                command.Parameters.AddWithValue("@id",id);

                using (var reader = await command.ExecuteReaderAsync())
                {
                    while (await reader.ReadAsync())
                    {
                        var employee = new EmployeeModel
                        {
                            Id = reader.GetInt32(reader.GetOrdinal("Id")),
                            Name = reader.GetString(reader.GetOrdinal("Name")),
                            Designation = reader.GetString(reader.GetOrdinal("Designation")),
                            Department = reader.GetString(reader.GetOrdinal("Department")),
                        };
                        employees.Add(employee);
                    }
                }
            }
            return Ok(employees);

        }



        [HttpGet("SearchEmployee", Name = "SearchEmployee")]
        public async Task<IActionResult> SearchEmployee()
        {
            var cmd = "SELECT id,name FROM Employee";
            var employees = new List<searchEmployee>();
            using (var connection = _context.CreateConnection())
            {
                await connection.OpenAsync();
                using var command = new SqlCommand(cmd, connection);
                using (var reader = await command.ExecuteReaderAsync())
                {
                    while (await reader.ReadAsync())
                    {
                        var employee = new searchEmployee
                        {
                            Id = reader.GetInt32(reader.GetOrdinal("Id")),
                            Name = reader.GetString(reader.GetOrdinal("Name")),

                        };
                        employees.Add(employee);
                    }
                }
            }
            return Ok(employees);

        }
        public IActionResult Index()
        {
            return View();
        }
    }
}

using System.Runtime.InteropServices;
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

        //Post employees
        [HttpPost("InsertEmployee", Name = "InsertEmployee")]
        public async Task<IActionResult> InsertEmployee([FromBody] EmployeeModel employee)
        {
            if(employee==null|| string.IsNullOrWhiteSpace(employee.Name))
            {
                return BadRequest("Invalid employee data");
            }
            var cmd = "Insert into Employee(Id,Name,Designation,Department) values(@Id,@Name,@Designation,@Department)";
            using (var connection = _context.CreateConnection())
            {
                await connection.OpenAsync();
                using var command =new SqlCommand(cmd, connection);

                command.Parameters.AddWithValue("@id", employee.Id);
                command.Parameters.AddWithValue("@Name", employee.Name);
                command.Parameters.AddWithValue("@Designation", employee.Designation);
                command.Parameters.AddWithValue("@Department", employee.Department);

                int rowsAffected = await command.ExecuteNonQueryAsync();

                if (rowsAffected > 0) {
                    return Ok("The employee with the id"+employee.Id+"is successfully inserted");
                }
                else
                {
                    return BadRequest("Failed to  insert employee");
                }

            }
        }
        public IActionResult Index()
        {
            return View();
        }
    }
}

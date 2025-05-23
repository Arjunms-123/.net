using System.Runtime.InteropServices;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Real.Context;
using Real.Models;
using Real.Context;

namespace Real.Controllers
{
    public class EmployeeController : Controller
    {
        private readonly DataContext _context;
        private readonly EmployeeModel _model;
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
            using (var connection = _context.CreateConnecton())
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

        [HttpGet("SearchById/{id}", Name = "SearchById")]
        public async Task<IActionResult> SearchById([FromRoute] int id)
        {
            var cmd = "SELECT * FROM Employee WHERE Id=@id";
            EmployeeModel employee = null;
            using (var connection = _context.CreateConnecton())
            {
                await connection.OpenAsync();
                using var command = new SqlCommand(cmd, connection);
                command.Parameters.AddWithValue("@id", id);

                using (var reader = await command.ExecuteReaderAsync())
                {
                    if (await reader.ReadAsync())
                    {
                        employee = new EmployeeModel
                        {
                            Id = reader.GetInt32(reader.GetOrdinal("Id")),
                            Name = reader.GetString(reader.GetOrdinal("Name")),
                            Designation = reader.GetString(reader.GetOrdinal("Designation")),
                            Department = reader.GetString(reader.GetOrdinal("Department")),
                        };
                    }
                }
            }

            if (employee == null)
            {
                return NotFound($"Employee with Id {id} not found.");
            }

            return Ok(employee);
        }

        [HttpGet("SearchEmployee", Name = "SearchEmployee")]
        public async Task<IActionResult> SearchEmployee()
        {
            var cmd = "SELECT Id, Name FROM Employee";
            var employees = new List<SearchEmployee>();
            using (var connection = _context.CreateConnecton())
            {
                await connection.OpenAsync();
                using var command = new SqlCommand(cmd, connection);
                using (var reader = await command.ExecuteReaderAsync())
                {
                    while (await reader.ReadAsync())
                    {
                        var employee = new SearchEmployee
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

        [HttpPost("InsertEmployee", Name = "InsertEmployee")]
        public async Task<IActionResult> InsertEmployee([FromBody] EmployeeModel employee)
        {
            if (employee == null || string.IsNullOrWhiteSpace(employee.Name))
            {
                return BadRequest("Invalid employee data");
            }

            var cmd = "INSERT INTO Employee (Id, Name, Designation, Department) VALUES (@Id, @Name, @Designation, @Department)";
            using (var connection = _context.CreateConnecton())
            {
                await connection.OpenAsync();
                using var command = new SqlCommand(cmd, connection);

                command.Parameters.AddWithValue("@Id", employee.Id);
                command.Parameters.AddWithValue("@Name", employee.Name);
                command.Parameters.AddWithValue("@Designation", employee.Designation);
                command.Parameters.AddWithValue("@Department", employee.Department);

                int rowsAffected = await command.ExecuteNonQueryAsync();

                if (rowsAffected > 0)
                {
                    return Ok($"The employee with the id {employee.Id} is successfully inserted.");
                    return Ok($"The employee with the id {employee.Id} is successfully inserted.");
                }
                else
                {
                    return BadRequest("Failed to insert employee.");
                }
            }
        }

        public IActionResult Index()
        {
            return View();
        }
    }
}

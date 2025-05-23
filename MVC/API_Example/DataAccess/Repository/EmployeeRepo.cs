using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccess.Context;
using DataAccess.Context.Models;
using Microsoft.AspNetCore.Mvc;

namespace DataAccess.Repository
{
    public class EmployeeRepo:ControllerBase
    {
         
        public async Task<dynamic> GetnameRepo(string name)
        {
            var res = "My name is" + name;
            return res;
        }

        private DataContext _context;
        private EmployeeModel _model;

        public EmployeeRepo(DataContext context, EmployeeModel model)
        {
            _context = context;
            _model = model;
        }
        public async Task<IActionResult> GetAllempdetailsrepo()
        {
            var cmd = "SELECT * FROM Employee";
            var employees = new List<EmployeeModel>();
            using (var connection = _context.CreateConnection())
            {
                await connection.OpenAsync();
                using var command = new SqlCommand(cmd, connection);
                using (var reader = await command.ExecuteReaderAsync()) {
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
    }
}



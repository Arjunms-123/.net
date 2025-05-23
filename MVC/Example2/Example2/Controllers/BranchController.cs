using System.Data.SqlClient;
using BranchApi.context;
using BranchApi.Model;
using DevExpress.Data.Browsing;
using Microsoft.AspNetCore.Mvc;

namespace BranchApi.Controllers
{
    public class BranchController : Controller
    {

        private dataContext _context;
        private ModelClass _model;

        public BranchController(dataContext context, ModelClass model)
        {
            _context = context;
            _model = model;
        }

        [HttpGet("GetBranchDetails", Name = "GetBranchDetails")]
        public async Task<IActionResult> GetBranchDetails()
        {
            var cmd = "SELECT * FROM Branch";
            var employees = new List<ModelClass>();
            using (var connection = _context.CreateConnection())
            {
                await connection.OpenAsync();
                using var command = new SqlCommand(cmd, connection);
                using (var reader = await command.ExecuteReaderAsync())
                {
                    while (await reader.ReadAsync())
                    {
                        var employee = new ModelClass
                        {
                            brid = reader.GetInt32(reader.GetOrdinal("brid")),
                            brName = reader.GetString(reader.GetOrdinal("brName")),
                            brHead = reader.GetString(reader.GetOrdinal("brHead")),
                            noEmp = reader.GetInt32(reader.GetOrdinal("noEmp")),
                        };
                        employees.Add(employee);
                    }
                }
            }
            return Ok(employees);

        }
        [HttpGet("GetDetails", Name = "GetDetails")]
        public async Task<IActionResult> GetDetails()
        {
            var cmd = "SELECT brid,brName FROM Branch";
            var employees = new List<Emp1>();
            using (var connection = _context.CreateConnection())
            {
                await connection.OpenAsync();
                using var command = new SqlCommand(cmd, connection);
                using (var reader = await command.ExecuteReaderAsync())
                {
                    while (await reader.ReadAsync())
                    {
                        var employee = new Emp1
                        {
                            brid = reader.GetInt32(reader.GetOrdinal("brid")),
                            brName = reader.GetString(reader.GetOrdinal("brName")),
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
            var cmd = "SELECT * FROM Branch WHERE brid=@id";   //column name=@the variable declared
            var employees = new List<ModelClass>();
            using (var connection = _context.CreateConnection())
            {
                await connection.OpenAsync();
                using var command = new SqlCommand(cmd, connection);

                command.Parameters.AddWithValue("@id", id);

                using (var reader = await command.ExecuteReaderAsync())
                {
                    while (await reader.ReadAsync())
                    {
                        var employee = new ModelClass
                        {
                            brid = reader.GetInt32(reader.GetOrdinal("brid")),
                            brName = reader.GetString(reader.GetOrdinal("brName")),
                            brHead = reader.GetString(reader.GetOrdinal("brHead")),
                            noEmp = reader.GetInt32(reader.GetOrdinal("noEmp")),
                        };
                        employees.Add(employee);
                    }
                }
            }
            return Ok(employees);

        }


    }
}

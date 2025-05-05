using System.Reflection.Metadata.Ecma335;
using Business.Services;
using DataAccess.Repository;
using Microsoft.AspNetCore.Mvc;

namespace API_Example.Controllers
{
    public class EmployeeController
    {
        private readonly EmployeeRepo _repo;
        private readonly EmployeeService _service;

        public EmployeeController(EmployeeRepo repo, EmployeeService service)
        {
            _repo = repo;
            _service = service;
        }
        [HttpGet("Getname/{name}", Name = "Getname")]
        public async Task<dynamic> Getname([FromRoute] string name)
        {
            var res = await _service.Getnameservice(name);
            return res;
        }
        [HttpGet("GetAllempdetails", Name = "GetAllempdetails")]
        public async Task<IActionResult> Getallempdetails()
        {
            var res = await _service.GetAllempdetailsService();
            return res;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.WebSockets;
using System.Text;
using System.Threading.Tasks;
using DataAccess.Repository;
using Microsoft.AspNetCore.Mvc;

namespace Business.Services
{
    public class EmployeeService
    {
        private readonly EmployeeRepo _repo;
        public EmployeeService(EmployeeRepo repo)
        {
            _repo = repo;
        }
        public async Task<dynamic> Getnameservice(string name)
        {
            var res = await _repo.GetnameRepo(name);
            return res;
        }
        public async Task<IActionResult> GetAllempdetailsService()
        {
            var res = await _repo.GetAllempdetailsrepo();
            return res;
        }
    }
}

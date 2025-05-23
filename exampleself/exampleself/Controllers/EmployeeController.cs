using exampleself.Models;
using Microsoft.AspNetCore.Mvc;

namespace exampleself.Controllers
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
        public IActionResult Index()
        {
            return View();
        }
    }
}

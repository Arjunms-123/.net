using System.Text;
using System.Xml.Linq;
using Microsoft.AspNetCore.Mvc;
using MVC_example.Models;
using Newtonsoft.Json;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace MVC_example.Controllers
{
    public class EmployeeController1 : Controller
    {
        public IActionResult Homepage()
        {
            return View();
        }
        public IActionResult viewEmployeeReport()
        {
            return View();
        }
        public IActionResult searchEmployee()
        {
            return View();
        }
        public IActionResult InsertEmployee()
        {
            return View();
        }
        public IActionResult viewEmployeeReport_Model()
        {
            return View();
        }
        public IActionResult InsertEmployee_model()
        {
            return View();
        }
        public string getAPIData(string datas)

        {
            string ApiPath = "https://localhost:7050/" + datas;
            // Create an instance of HttpClient to make the HTTP request
            using (var client = new HttpClient())
            {
                // Initialize a variable to hold the response data
                string data = "";
                // Set the base address of the HttpClient to the constructed API path
                client.BaseAddress = new Uri(ApiPath);
                // Make a GET request to the API and wait for the result
                HttpResponseMessage result = client.GetAsync(client.BaseAddress).Result;
                // Check if the response indicates success
                if (result.IsSuccessStatusCode)
                {
                    // Read the response content as a string
                    data = result.Content.ReadAsStringAsync().Result;
                }
                // Return the response data 
                return data;
            }
        }
        public async Task<dynamic> postAPIData(string datas)
        {
            string[] datastring = datas.Split("$");
            string ApiPath = "https://localhost:7050/" + datastring[0];
            var data = "";


            string[] datastring2 = datastring[1].Split("~");
            using (HttpClient client = new HttpClient())
            {
                string content = JsonConvert.SerializeObject(new
                {
                    id = datastring2[0],
                    name = datastring2[1],
                    designation = datastring2[2],
                    department = datastring2[3]

                });
                var buffer = Encoding.UTF8.GetBytes(content);
                var byteContent = new ByteArrayContent(buffer);
                byteContent.Headers.ContentType = new
                    System.Net.Http.Headers.MediaTypeHeaderValue
                    ("application/json");

                HttpResponseMessage result = await client.PostAsync(ApiPath, byteContent);
                if (result.IsSuccessStatusCode)
                {
                    data = result.Content.ReadAsStringAsync().Result;
                }
            }
            return data;

        }


        public List<EmployeeModel> getAPIData_model(string datas)

        {
            string ApiPath = "https://localhost:7050/" + datas;
            // Create an instance of HttpClient to make the HTTP request
            using (var client = new HttpClient())
            {
                // Initialize a variable to hold the response data
                List<EmployeeModel> employees = new List<EmployeeModel>();
                // Set the base address of the HttpClient to the constructed API path
                client.BaseAddress = new Uri(ApiPath);
                // Make a GET request to the API and wait for the result
                HttpResponseMessage result = client.GetAsync(client.BaseAddress).Result;
                // Check if the response indicates success
                if (result.IsSuccessStatusCode)
                {
                    var jsonData = result.Content.ReadAsStringAsync().Result;
                    var apiResponse = JsonConvert.DeserializeObject<List<dynamic>>(jsonData);

                    foreach (var item in apiResponse)
                    {
                        var employee = new EmployeeModel
                        {
                            EmpCode = item.id,
                            EmpName = item.name,
                            Designation = item.designation,
                            Department = item.department,
                        };
                        employees.Add(employee);
                    }

                }
                return employees;

            }
        }


        public async Task<IActionResult> postAPIData_model([FromBody] EmployeeModel employee)
        {
            string apipath = "https://localhost:7050/InsertEmployee";
            var apiData = new
            {
                id = employee.EmpCode,
                name = employee.EmpName,
                designation = employee.Designation,
                department = employee.Department,
            };

            using (HttpClient client = new HttpClient())
            {
                string content = JsonConvert.SerializeObject(apiData);
                var buffer = Encoding.UTF8.GetBytes(content);
                var byteContent = new ByteArrayContent(buffer);
                byteContent.Headers.ContentType = new System.Net.Http.Headers.MediaTypeHeaderValue("application/json");

                HttpResponseMessage result = await client.PostAsync(apipath, byteContent);
                if (result.IsSuccessStatusCode)
                {
                    var data = await result.Content.ReadAsStringAsync(); // Use await here
                    return Ok(data);
                }
                else
                    {
                        return StatusCode((int)result.StatusCode,"Eror occured while inserting employee");
                    }
                }
  
            }

        }
    }

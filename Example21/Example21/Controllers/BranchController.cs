using System.Text;
using Example21.Models;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace Example21.Controllers
{
    public class BranchController : Controller
    {
        public IActionResult Homepage()
        {
            return View();
        }
        public IActionResult GetBranchDetails()
        {
            return View();
        }
        public IActionResult EmployeeSearch()
        {
            return View();
        }
        public IActionResult BranchReportModel()
        {
            return View();
        }
        public IActionResult SearchEmployeeModel()
        {
            return View();
        }
        public IActionResult InsertEmployee_model()
        {
            return View();
        }
        public string getAPIData(string datas)
        //Get API Response
        {
            // Split the input string 'datas' using '$' as the delimiter
            //string[] datastring = datas.Split("$");
            // Construct the API path using the second and first elements of the split array
            string ApiPath = "https://localhost:7030/" + datas;

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


        public List<BranchReportModel> getAPIData_model(string datas)

        {
            string ApiPath = "https://localhost:7030/" + datas;
            // Create an instance of HttpClient to make the HTTP request
            using (var client = new HttpClient())
            {
                // Initialize a variable to hold the response data
                List<BranchReportModel> employees = new List<BranchReportModel>();
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
                        var employee = new BranchReportModel
                        {
                            brid = item.brid,
                            brName = item.brName,
                            brHead = item.brHead,
                            noEmp = item.noEmp,
                        };
                        employees.Add(employee);
                    }

                }
                return employees;

            }
        }
        //public List<SearchEmployeeModel> getAPIData_model2(string datas)

        //{
        //    string ApiPath = "https://localhost:7030/" + datas;
        //    // Create an instance of HttpClient to make the HTTP request
        //    using (var client = new HttpClient())
        //    {
        //        // Initialize a variable to hold the response data
        //        List<SearchEmployeeModel> employees = new List<SearchEmployeeModel>();
        //        // Set the base address of the HttpClient to the constructed API path
        //        client.BaseAddress = new Uri(ApiPath);
        //        // Make a GET request to the API and wait for the result
        //        HttpResponseMessage result = client.GetAsync(client.BaseAddress).Result;
        //        // Check if the response indicates success
        //        if (result.IsSuccessStatusCode)
        //        {
        //            var jsonData = result.Content.ReadAsStringAsync().Result;
        //            var apiResponse = JsonConvert.DeserializeObject<List<dynamic>>(jsonData);

        //            foreach (var item in apiResponse)
        //            {
        //                var employee = new SearchEmployeeModel
        //                {
        //                    brid = item.brid,
        //                    brName = item.brName,
        //                };
        //                employees.Add(employee);
        //            }

        //        }
        //        return employees;

        //    }
        //}

    }
        }


        

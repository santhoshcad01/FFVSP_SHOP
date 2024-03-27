using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using MYS.Models;
using Microsoft.Data.SqlClient;

namespace MYS.Controllers;

public class HomeController : Controller
{
 
 SqlConnection con=new SqlConnection();
 SqlCommand com=new SqlCommand();

 SqlDataReader? dr;



    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        return View();
    }

    public IActionResult Privacy()
    {
        return View();
    }

[HttpGet]
     public IActionResult Login()
    {

        return View();
    }

    void connectionString(){

        con.ConnectionString=" data source= 192.168.1.240\\SQLEXPRESS; database=cad_loadheavy; User Id = CADBATCH01; Password = CAD@123pass; TrustServerCertificate=True;";
    }

    [HttpPost]
    public IActionResult VerifyLogin(LoginModel lmodel)
    {
        connectionString();
        con.Open();
        com.Connection=con;
        com.CommandText="Select * from dbo.lh_Login where username='"+lmodel.username+"' and password='"+lmodel.password+"';";
        
        dr=com.ExecuteReader();
        
        if(dr.Read())
        {
            con.Close();
            return View("Success");
        }

        else
        {
            con.Close();
            return View("Error");
        }
        

    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}

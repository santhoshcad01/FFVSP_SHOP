using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using HeavyLoad.Models;

namespace HeavyLoad.Controllers;

public class HomeController : Controller
{
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
     public IActionResult Packages()
    {
        return View();
    }
     public IActionResult offers()
    {
        return View();
    }
      public IActionResult NewBooks()
    {
        return View();
    }
     public IActionResult search()
    {
        return View();
    }
     public IActionResult login()
    {
        return View();
    }


    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}

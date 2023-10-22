using api.Models;
using Microsoft.AspNetCore.Mvc;

namespace api.Controllers;

[ApiController]
[Route("api/[Controller]")]
public class CitiesController : ControllerBase
{

    public static readonly CityData[] CityDataArray = new CityData[]
    {
  new CityData(1,"Dortmund","","Hallo Dortmund",600000,500),
  new CityData(2,"Köln","","Hallo Köln"),
    };

    [HttpGet]
    public ActionResult<IEnumerable<CityData>> GetCities() => CityDataArray.ToList<CityData>();

}

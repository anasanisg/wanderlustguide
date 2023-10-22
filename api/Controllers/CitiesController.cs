using api.Models;
using Microsoft.AspNetCore.Mvc;

namespace api.Controllers;

[ApiController]
[Route("api/[Controller]")]
public class CitiesController : ControllerBase
{

    public static readonly CityData[] CityDataArray = new CityData[]
    {
        new CityData(1,"Bocholt","https://www.hotel-werk2.de/wp-content/uploads/2018/11/bocholt-567665_1920-1024x577.jpg",
        "Bocholt is a city in the north-west of North Rhine-Westphalia, Germany, part of the district Borken. It is situated 4 km south of the border with the Netherlands. Suderwick is part of Bocholt and is situated at the border annex to Dinxperlo.",60234,5),
        new CityData(2,"Dortmund","https://tvilight.com/wp-content/uploads/2022/03/Smart-City-Street-Lighting-Dortmund-Germany.jpg",
        "Dortmund is a city in Germany’s North Rhine-Westphalia region. It's known for its Westfalen Stadium, home to the Borussia soccer team. Nearby Westfalen Park is marked by the Florian Tower, with its observation platform. The Dortmund U-Tower is topped by a huge letter U and houses Museum Ostwall’s contemporary art exhibits. Rombergpark botanical garden has local trees and greenhouses with cacti and tropical plants.",60234,5),
        new CityData(3,"Köln",
        "https://a.cdn-hotels.com/gdcs/production137/d1681/17b41670-68ce-11e8-8a0f-0242ac11000c.jpg","Cologne, a 2,000-year-old city spanning the Rhine River in western Germany, is the region’s cultural hub. A landmark of High Gothic architecture set amid reconstructed old town, the twin-spired Cologne Cathedral is also known for its gilded medieval reliquary and sweeping river views. The adjacent Museum Ludwig showcases 20th-century art, including many masterpieces by Picasso, and the Romano-Germanic Museum houses Roman antiquities.",12034,4),
    };

    [HttpGet]
    public ActionResult<IEnumerable<CityData>> GetCities() => CityDataArray.ToList<CityData>();

}

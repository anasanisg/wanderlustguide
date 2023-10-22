using System.Diagnostics.CodeAnalysis;

namespace api.Models;

public class CityData
{
    public required int cityId { get; set; }

    public required string name { get; set; }

    public required string cityImage { get; set; }

    public string? cityDescription { get; set; }

    public int? population { get; set; }

    public int? rate { get; set; }

    [SetsRequiredMembers]
    public CityData(int cityId, string name, string cityImage, string? cityDescription = null, int? population = null, int? rate = null)
    {
        this.cityId = cityId;
        this.name = name;
        this.cityImage = cityImage;
        this.cityDescription = cityDescription;
        this.population = population;
        this.rate = rate;

    }
}

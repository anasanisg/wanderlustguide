class CityModel {
  final int cityId;
  final String name;
  final String cityImage;
  final String? cityDescription;
  final int? population;
  final int? rate;

  CityModel(
      {required this.cityId,
      required this.name,
      required this.cityImage,
      this.cityDescription,
      this.population,
      this.rate});

  CityModel.formJson(Map<String, dynamic> json)
      : cityId = json['cityId'],
        name = json['name'],
        cityImage = json['cityImage'],
        cityDescription = json['cityDescription'],
        population = json['population'],
        rate = json['rate'];
}

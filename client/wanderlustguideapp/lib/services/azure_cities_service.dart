import 'package:wanderlustguideapp/interfaces/icities.dart';
import 'package:wanderlustguideapp/models/city_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class AzureCitiesService implements ICities {
  @override
  Future<List<CityModel>> getCityData() async {
    final res = await http
        .get(Uri.parse('https://wanderlustguide.azurewebsites.net/api/cities'));

    final resData = json.decode(res.body) as List;

    List<CityModel> ret = [];
    for (var element in resData) {
      ret.add(CityModel.formJson(element as Map<String, dynamic>));
    }

    return ret;
  }
}

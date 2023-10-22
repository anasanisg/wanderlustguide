import 'package:wanderlustguideapp/models/city_model.dart';

abstract class ICities {
  Future<List<CityModel>> getCityData();
}

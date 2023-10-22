import 'package:flutter/material.dart';
import 'package:wanderlustguideapp/interfaces/icities.dart';
import 'package:wanderlustguideapp/models/city_model.dart';

class CitiesProvider with ChangeNotifier {
  final ICities citiesService;
  CitiesProvider({required this.citiesService});

  List<CityModel> _cities = [];
  List<CityModel> get cities => [..._cities];

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(value) {
    _isLoading = value;
    notifyListeners();
  }

  void syncAndFetchCities() async {
    isLoading = true;
    _cities = await citiesService.getCityData();
    isLoading = false;
  }
}

import 'package:wanderlustguideapp/interfaces/icities.dart';

class ServiceCollector {
  static final ServiceCollector _serviceCollector =
      ServiceCollector._internal();
  ServiceCollector._internal();

  static ServiceCollector getInstance() => _serviceCollector;

  late ICities _citiesService;
  ICities get citiesService => _citiesService;

  void injectFixedService({required ICities citiesService}) {
    _citiesService = citiesService;
  }
}

import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:wanderlustguideapp/providers/cities_provider.dart';
import 'package:wanderlustguideapp/services/service_collector.dart';

List<SingleChildWidget> injectProviders() {
  return [
    ChangeNotifierProvider(
        create: (context) => CitiesProvider(
            citiesService: ServiceCollector.getInstance().citiesService))
  ];
}

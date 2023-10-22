import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wanderlustguideapp/services/azure_cities_service.dart';
import 'package:wanderlustguideapp/services/service_collector.dart';
import 'package:wanderlustguideapp/theme.dart';
import 'package:wanderlustguideapp/utils/providers.dart';
import 'package:wanderlustguideapp/utils/screen_config.dart';
import 'package:wanderlustguideapp/wrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ScreenConfig.init(
      onlyUpDownOrientation: true,
      designDeviceHeight: 844,
      designDeviceWidth: 390);

  ServiceCollector.getInstance()
      .injectFixedService(citiesService: AzureCitiesService());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: injectProviders(),
      child: MaterialApp(
        title: 'anas',
        home: const Wrapper(),
        debugShowCheckedModeBanner: false,
        theme: theme(),
      ),
    );
  }
}

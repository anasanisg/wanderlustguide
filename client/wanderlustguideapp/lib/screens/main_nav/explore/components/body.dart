import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wanderlustguideapp/components/cities_list.dart';
import 'package:wanderlustguideapp/providers/cities_provider.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        Provider.of<CitiesProvider>(context, listen: false)
            .syncAndFetchCities();
      },
    );

    return Consumer<CitiesProvider>(
      builder: (context, value, child) {
        if (value.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            width: double.infinity,
            child: Column(children: [
              value.cities.isEmpty
                  ? Container()
                  : CitiesList(
                      title: "Cities Information", cities: value.cities),
            ]),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:wanderlustguideapp/components/city_template.dart';
import 'package:wanderlustguideapp/models/city_model.dart';
import 'package:wanderlustguideapp/theme.dart';
import 'package:wanderlustguideapp/utils/constants.dart';
import 'package:wanderlustguideapp/utils/screen_config.dart';

class CitiesList extends StatelessWidget {
  const CitiesList({super.key, required this.title, required this.cities});
  final String title;
  final List<CityModel> cities;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          top: ScreenConfig.getYByPercentScreen(0.061),
          right: ScreenConfig.getXByPerecentScreen(0.05),
          left: ScreenConfig.getXByPerecentScreen(0.05),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: textTitle(kTitleBlackTextColor),
                ),
                SizedBox(
                    height: 40,
                    width: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Image(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/images/logo.png',
                          )),
                    ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: cities.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    CityTemplate(cityData: cities[index]),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                );
              },
            )
          ],
        ));
  }
}

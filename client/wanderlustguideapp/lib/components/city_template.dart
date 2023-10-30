import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:wanderlustguideapp/models/city_model.dart';
import 'package:wanderlustguideapp/theme.dart';
import 'package:wanderlustguideapp/utils/constants.dart';

class CityTemplate extends StatelessWidget {
  const CityTemplate({super.key, required this.cityData});
  final CityModel cityData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: const CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                      'https://anasanis.me/assets/img/profile-img.jpg',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, top: 0),
                  child: const Text(
                    'Anas Mahfouz',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            const SizedBox(
              child: Icon(Icons.more_horiz),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: InkWell(
            onTap: () {},
            child: SizedBox(
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: CachedNetworkImage(
                  imageUrl: cityData.cityImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  cityData.name,
                  style: textTitle(kPrimaryColor),
                ),
              ]),
              Text(
                cityData.cityDescription!,
                style: textSubtitle(kNormalTextColor),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            for (int i = 0; i <= 5; i++)
              const Icon(
                Icons.star,
                color: Colors.amber,
              ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "5",
              style: textSubtitle(kNormalTextColor),
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        const Divider(),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}

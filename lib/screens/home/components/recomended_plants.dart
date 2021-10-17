import 'package:flutter/material.dart';
import 'package:plant_app/assets.dart';
import 'package:plant_app/contants.dart';
import 'package:plant_app/screens/details/details_screen.dart';

class RecomendedPlants extends StatelessWidget {
  const RecomendedPlants({
    Key? key,
  }) : super(key: key);

  void goToDetailsScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const DetailsScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _RecomendedPlantCard(
            image: Assets.images.plant3,
            title: 'Samantha',
            country: 'Russia',
            price: 400,
            onPress: () => goToDetailsScreen(context),
          ),
          _RecomendedPlantCard(
            image: Assets.images.plant4,
            title: 'Angelica',
            country: 'Russia',
            price: 540,
            onPress: () => goToDetailsScreen(context),
          ),
          _RecomendedPlantCard(
            image: Assets.images.plant5,
            title: 'Orchid',
            country: 'Russia',
            price: 600,
            onPress: () => goToDetailsScreen(context),
          ),
          const SizedBox(width: kDefaultPadding)
        ],
      ),
    );
  }
}

class _RecomendedPlantCard extends StatelessWidget {
  final AssetImage image;
  final String title;
  final String country;
  final int price;
  final void Function() onPress;

  const _RecomendedPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: MediaQuery.of(context).size.width * 0.4,
      child: Column(
        children: [
          Image(image: image),
          GestureDetector(
            onTap: onPress,
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: Colors.white.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$title\n'.toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: country.toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

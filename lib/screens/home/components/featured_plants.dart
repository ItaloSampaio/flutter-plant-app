import 'package:flutter/material.dart';
import 'package:plant_app/assets.dart';
import 'package:plant_app/contants.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _FeaturedPlantCard(
            image: Assets.images.plant1,
            onPress: () {},
          ),
          _FeaturedPlantCard(
            image: Assets.images.plant2,
            onPress: () {},
          ),
          const SizedBox(width: kDefaultPadding)
        ],
      ),
    );
  }
}

class _FeaturedPlantCard extends StatelessWidget {
  final AssetImage image;
  final void Function() onPress;

  const _FeaturedPlantCard({
    Key? key,
    required this.image,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: MediaQuery.of(context).size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: image,
          ),
        ),
      ),
    );
  }
}

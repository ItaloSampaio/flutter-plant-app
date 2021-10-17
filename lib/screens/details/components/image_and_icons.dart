import 'package:flutter/material.dart';
import 'package:plant_app/assets.dart';
import 'package:plant_app/contants.dart';

import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: SizedBox(
        height: screenSize.height * 0.8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPadding * 3,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding,
                        ),
                        icon: Assets.icons.backArrow,
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    const Spacer(),
                    IconCard(icon: Assets.icons.sun),
                    IconCard(icon: Assets.icons.humidity),
                    IconCard(icon: Assets.icons.humidity2),
                    IconCard(icon: Assets.icons.wind),
                  ],
                ),
              ),
            ),
            Container(
              height: screenSize.height * 0.8,
              width: screenSize.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft,
                  image: Assets.images.plantMain2,
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

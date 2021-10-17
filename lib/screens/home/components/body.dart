import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plant_app/contants.dart';
import 'package:plant_app/screens/home/components/section_heading.dart';

import 'featured_plants.dart';
import 'header.dart';
import 'recomended_plants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Background(),
        SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                const Header(),
                SectionHeading(
                  title: 'Recomended',
                  onMorePressed: () {},
                ),
                const RecomendedPlants(),
                SectionHeading(
                  title: 'Featured Plants',
                  onMorePressed: () {},
                ),
                const FeaturedPlants(),
                SizedBox(
                  height:
                      MediaQuery.of(context).padding.bottom + kDefaultPadding,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Container(color: kPrimaryColor)),
        Expanded(child: Container(color: Colors.white))
      ],
    );
  }
}

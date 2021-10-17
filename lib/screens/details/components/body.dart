import 'package:flutter/material.dart';
import 'package:plant_app/contants.dart';

import 'footer_buttons.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(screenSize: screenSize),
          const TitleAndPrice(title: 'Angelica', country: 'Russia', price: 400),
          const SizedBox(height: kDefaultPadding),
          const FooterButtons(),
        ],
      ),
    );
  }
}

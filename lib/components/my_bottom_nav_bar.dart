import 'package:flutter/material.dart';
import 'package:plant_app/assets.dart';
import 'package:plant_app/contants.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Assets.icons.flower,
            onPressed: () {},
          ),
          IconButton(
            icon: Assets.icons.heart,
            onPressed: () {},
          ),
          IconButton(
            icon: Assets.icons.user,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
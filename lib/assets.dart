import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class Assets {
  static final icons = _Icons._();
  static final images = _Images._();

  Assets._();
}

class _Icons {
  _Icons._();

  SvgPicture get backArrow => SvgPicture.asset('assets/icons/back_arrow.svg');

  SvgPicture get flower => SvgPicture.asset('assets/icons/flower.svg');

  SvgPicture get heart => SvgPicture.asset('assets/icons/heart.svg');

  SvgPicture get humidity => SvgPicture.asset('assets/icons/humidity.svg');

  SvgPicture get humidity2 => SvgPicture.asset('assets/icons/humidity_2.svg');

  SvgPicture get menu => SvgPicture.asset('assets/icons/menu.svg');

  SvgPicture get more => SvgPicture.asset('assets/icons/more.svg');

  SvgPicture get search => SvgPicture.asset('assets/icons/search.svg');

  SvgPicture get sun => SvgPicture.asset('assets/icons/sun.svg');

  SvgPicture get user => SvgPicture.asset('assets/icons/user.svg');

  SvgPicture get wind => SvgPicture.asset('assets/icons/wind.svg');
}

class _Images {
  _Images._();

  AssetImage get logo => const AssetImage('assets/images/logo.png');

  AssetImage get plant1 => const AssetImage('assets/images/plant_1.png');

  AssetImage get plant2 => const AssetImage('assets/images/plant_2.png');

  AssetImage get plant3 => const AssetImage('assets/images/plant_3.png');

  AssetImage get plant4 => const AssetImage('assets/images/plant_4.png');

  AssetImage get plant5 => const AssetImage('assets/images/plant_5.png');

  AssetImage get plantMain1 =>
      const AssetImage('assets/images/plant_main_1.png');

  AssetImage get plantMain2 =>
      const AssetImage('assets/images/plant_main_2.png');
}

import 'package:flutter/material.dart';

import '../utils/assets_manager.dart';

class CustomLogo {
  static Widget big(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          ImageManager.logoBG,
          width: size.width * .8,
        ),
        Image.asset(
          ImageManager.logo,
          height: size.width * .4,
        ),
      ],
    );
  }

  static Widget small(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          ImageManager.logoBG,
          width: size.width * .5,
        ),
        Image.asset(
          ImageManager.logo,
          height: size.width * .2,
        ),
      ],
    );
  }
}

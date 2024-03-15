import 'package:flutter/material.dart';

Widget headingLarge({
  required BuildContext context,
  required String data,
  double? fontSize,
  FontWeight? fontWeight,
  Color? color,
  TextAlign? textAlign,
}) {
  return Text(
    data,
    textAlign: textAlign,
    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        ),
  );
}

Widget headingMedium({
  required BuildContext context,
  required String data,
  double? fontSize,
  FontWeight? fontWeight,
  Color? color,
  TextAlign? textAlign,
}) {
  return Text(
    data,
    textAlign: textAlign,
    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        ),
  );
}

Widget headingSmall({
  required BuildContext context,
  required String data,
  double? fontSize,
  FontWeight? fontWeight,
  Color? color,
  TextAlign? textAlign,
}) {
  return Text(
    data,
    textAlign: textAlign,
    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    ),
  );
}

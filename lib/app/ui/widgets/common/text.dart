import 'package:flutter/material.dart';

import '../../../utility/dimensions.dart';
import '../../themes/colors.dart';

class BigText extends StatelessWidget {
  const BigText(
      {Key? key,
      required this.text,
      this.fontSize = 0,
      this.overflow = TextOverflow.ellipsis,
      this.color = AppColors.black,
      this.fontWeight = FontWeight.w400})
      : super(key: key);
  final String text;
  final double fontSize;
  final TextOverflow overflow;
  final Color? color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
          color: color,
          fontFamily: 'roboto',
          fontWeight: fontWeight,
          fontSize: fontSize == 0 ? Dimensions.font20 : fontSize),
    );
  }
}

class SmallText extends StatelessWidget {
  const SmallText(
      {Key? key,
      required this.text,
      this.fontSize = 12,
      this.height = 1.2,
      this.overflow = TextOverflow.ellipsis,
      this.color = AppColors.textColor,
      this.fontWeight = FontWeight.normal})
      : super(key: key);
  final String text;
  final double fontSize;
  final double height;
  final TextOverflow overflow;
  final Color? color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // maxLines: 1,
      // overflow: overflow,
      style: TextStyle(
          color: color,
          fontFamily: 'roboto',
          fontWeight: fontWeight,
          fontSize: fontSize,
          height: height),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:idute/components/constants/colors.dart';
import '../constants/size_config.dart';

Text buildText({
  String text = "",
  double txtSize = 15,
  double letterSpacing = 0,
  FontWeight fontWeight = FontWeight.w400,
  Color color = AppColors.kPrimaryColor,
  int maxLine = 2,
  TextOverflow overflow = TextOverflow.clip,
}) {
  return Text(
    text,
    maxLines: maxLine,
    overflow: overflow,
    style: TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: getProportionateScreenWidth(txtSize),
      letterSpacing: letterSpacing,
    ),
  );
}

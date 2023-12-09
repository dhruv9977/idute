import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/size_config.dart';

Container buildSeperator() {
  return Container(
    width: getProportionateScreenWidth(32),
    height: getProportionateScreenHeight(8),
    // color: AppColors.kPrimaryColor,
    decoration: BoxDecoration(
      color: AppColors.kPrimaryColor,
      border: Border.all(
        width: 50,
      ),
      borderRadius: BorderRadius.circular(8),
    ),
  );
}

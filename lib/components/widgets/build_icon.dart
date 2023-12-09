import 'package:flutter/material.dart';
import 'package:idute/components/constants/colors.dart';

Widget buildIcon({
  IconData icon = Icons.circle,
  Color color = AppColors.kPrimaryColor,
  double size = 24,
}) {
  return Icon(
    icon,
    color: color,
    size: size,
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:idute/components/constants/colors.dart';

import '../../../../../components/widgets/normal_text_widget.dart';

AppBar buildAppBar(bool isTitle) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.black,
    title: isTitle
        ? buildText(
            text: 'IDUTE',
            txtSize: 20,
            fontWeight: FontWeight.w400,
          )
        : Padding(
            padding: const EdgeInsets.only(left: 10),
            child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                width: 34,
                height: 34,
                decoration: const ShapeDecoration(
                  shape: OvalBorder(
                    side: BorderSide(width: 1, color: Color(0xFF4E4E4E)),
                  ),
                ),
                child: const Icon(
                  Icons.arrow_back_rounded,
                  color: AppColors.kPrimaryColor,
                ),
              ),
            ),
          ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/logo/top_1.svg"),
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/logo/top_2.svg"),
      ),
    ],
  );
}

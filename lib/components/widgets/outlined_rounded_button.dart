import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/size_config.dart';
import 'normal_text_widget.dart';

class OutlinedRoundedButton extends StatelessWidget {
  const OutlinedRoundedButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(305),
      height: getProportionateScreenHeight(50),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          padding: EdgeInsets.zero,
          side: const BorderSide(
            width: 1,
            color: Color(0xffB3B3B3),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildText(
              text: "No account yet ? ",
              txtSize: 15.56,
              color: const Color(0xffB3B3B3),
              fontWeight: FontWeight.w500,
            ),
            buildText(
              text: "Sign up",
              txtSize: 15.56,
              color: AppColors.kPrimaryColor,
              fontWeight: FontWeight.w600,
            )
          ],
        ),
      ),
    );
  }
}

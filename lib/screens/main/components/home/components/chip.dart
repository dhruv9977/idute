import 'package:flutter/material.dart';
import 'package:idute/components/constants/colors.dart';

import '../../../../../components/constants/size_config.dart';
import '../../../../../components/widgets/normal_text_widget.dart';

class BuildChoiceChip extends StatelessWidget {
  const BuildChoiceChip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // list of chips
    List<String> items = [
      "Art",
      "Fashion",
      "Tech",
      "Legal",
      "Science",
      "History",
    ];

    return Padding(
      padding: EdgeInsets.only(
        top: getProportionateScreenHeight(25),
        bottom: getProportionateScreenHeight(2),
        right: getProportionateScreenWidth(7),
      ),
      child: SizedBox(
        width: double.infinity,
        height: 44,
        child: ListView(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(6),
          ),
          scrollDirection: Axis.horizontal,
          children: List<Widget>.generate(
            items.length,
            (int index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(5.5),
                ),
                child: _buildChip(items, index),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}

ChoiceChip _buildChip(List<String> items, int index) {
  return ChoiceChip(
    elevation: 1,
    side: const BorderSide(
      width: 1,
      color: Color(0xff959595),
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    label: SizedBox(
      width: getProportionateScreenWidth(85),
      height: getProportionateScreenHeight(28),
      child: Center(
        child: buildText(
          text: items[index],
          color: AppColors.kPrimaryColor,
          txtSize: 11,
        ),
      ),
    ),
    onSelected: (item) {
      // TODO select / unselect
    },
    padding: EdgeInsets.zero,
    labelPadding: EdgeInsets.zero,
    selected: true,
    showCheckmark: false,
    disabledColor: Colors.white,
    selectedColor: const Color(0xff2b2b2b),
    backgroundColor: Colors.black,
  );
}

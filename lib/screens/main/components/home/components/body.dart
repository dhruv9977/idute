import 'package:flutter/material.dart';
import 'package:idute/screens/main/components/home/components/chip.dart';

import 'card_list.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          BuildChoiceChip(),
          BuildCardList(),

          // GetBuilder<HomeController>(
          //   builder: (controller) => BuildCardList(
          //     data: controller.venueData.value.venues,
          //   ),
          // ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idute/screens/main/components/home/components/build_card_rows.dart';
import '../../../../../components/constants/route_helper.dart';
import '../../../../../components/constants/size_config.dart';

class BuildCardList extends StatelessWidget {
  const BuildCardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<bool> isAudio = [true, false, false, true, false];
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.only(bottom: getProportionateScreenHeight(20)),
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return _buildCard(index, context, isAudio[index]);
        },
      ),
    );
  }

  Widget _buildCard(int index, BuildContext context, bool isAudio) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(12.5),
        vertical: getProportionateScreenHeight(8),
      ),
      child: GestureDetector(
        onTap: () {
          Get.toNamed(
            RouteHelper.getDetailScreen(),
            arguments: { "isAudio": isAudio}
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          color: const Color(0xff1f2220),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(10),
              vertical: getProportionateScreenHeight(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildFirstRow(2),
                buildSizeHeight(height: 19),
                buildSecondRow(),
                buildSizeHeight(height: 24),
                buildThirdRow(),
                buildSizeHeight(height: 28),
                isAudio ? buildFourthRow() : buildSizeHeight(height: 2),
                buildSizeHeight(height: 7),
                buildFifthRow(true),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

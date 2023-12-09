import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:idute/screens/main/components/home/controller/home_controller.dart';

import '../../../../../components/constants/size_config.dart';
import '../../../../../components/widgets/normal_text_widget.dart';

Widget buildFirstRow(double leftPadding) {
  return Padding(
    padding: EdgeInsets.only(left: leftPadding),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          "assets/logo/logo_5.svg",
          height: 35,
          width: 35,
        ),
        buildSizeWidth(width: 7),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildText(
              text: "John Doe",
              txtSize: 12,
            ),
            buildSizeHeight(height: 2),
            buildText(
              text: "10 min ago",
              txtSize: 8,
              color: const Color(0xFFB6B6B6),
            ),
          ],
        ),
        const Spacer(),
        Container(
          width: 61,
          height: 20,
          decoration: ShapeDecoration(
            color: Colors.white.withOpacity(0.10000000149011612),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                color: Colors.white.withOpacity(0.5),
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Center(
            child: buildText(
              text: "Health Care",
              txtSize: 7,
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/logo/card_1.svg",
          ),
        ),
      ],
    ),
  );
}

Padding buildSecondRow() {
  return Padding(
    padding: EdgeInsets.only(
      left: getProportionateScreenWidth(6),
      right: getProportionateScreenWidth(4),
    ),
    child: buildText(
      text: "Food waste or food loss refers to uneaten or discarded food.",
      fontWeight: FontWeight.w700,
      txtSize: 10,
    ),
  );
}

Padding buildThirdRow() {
  return Padding(
    padding: EdgeInsets.only(
      left: getProportionateScreenWidth(7),
      right: getProportionateScreenWidth(6),
    ),
    child: buildText(
      text:
          "Some avenues that can be explored are educating farmers ongood storage practices, recycling and composting, providing transportation and storage facilities, re-distributing leftover food from parties and events, and setting up compost plants and food waste management platforms.",
      txtSize: 10,
      maxLine: 5,
    ),
  );
}

Widget buildFourthRow() {
  return GetBuilder<HomeController>(
    builder: (controller) {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                controller.playandPause();
              },
              child: Container(
                width: 30,
                height: 30,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: controller.isStopped.value
                    ? const Icon(
                        Icons.pause_outlined,
                        size: 18,
                      )
                    : const Icon(
                        Icons.play_arrow,
                        size: 18,
                      ),
              ),
            ),
            buildSizeWidth(width: 8),
            AudioFileWaveforms(
              size: Size(
                getProportionateScreenWidth(250),
                getProportionateScreenHeight(20),
              ),
              playerController: controller.playerController,
              enableSeekGesture: true,
              waveformType: WaveformType.fitWidth,
              continuousWaveform: true,
              playerWaveStyle: const PlayerWaveStyle(
                scaleFactor: 100,
                fixedWaveColor: Color(0xffa1a1a1),
                liveWaveColor: Colors.white,
                waveCap: StrokeCap.round,
              ),
            ),
          ],
        ),
      );
    },
  );
}

Padding buildFifthRow(bool isMainScreen) {
  return Padding(
    padding: EdgeInsets.only(
      left: getProportionateScreenWidth(7),
      right: getProportionateScreenWidth(3),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {},
          customBorder: const RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFF555555)),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
          ),
          child: Container(
            width: 50,
            height: 21,
            decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFF555555)),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
            ),
            child: Center(
              child: buildText(
                text: "Vote",
                txtSize: 7,
                color: const Color(0xFF67AC6E),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          customBorder: const RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFF555555)),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Container(
            width: 50,
            height: 21,
            decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFF555555)),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
            ),
            child: Center(
              child: buildText(
                text: "Hate",
                txtSize: 7,
                color: const Color(0xFFEA2323),
              ),
            ),
          ),
        ),
        buildSizeWidth(width: 8),
        buildText(
          text: "10k Voted",
          txtSize: 8,
          color: const Color(0xFFB6B6B6),
        ),
        const Spacer(),
        isMainScreen
            ? IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/logo/card_2.svg",
                ),
              )
            : Row(
                children: [
                  SizedBox(
                    width: 28,
                    height: 28,
                    child: SvgPicture.asset(
                      "assets/logo/card_2.svg",
                    ),
                  ),
                  buildSizeWidth(width: 2),
                  buildText(
                    text: "59k Comments",
                    txtSize: 8,
                    color: const Color(0xFFB6B6B6),
                  ),
                ],
              ),
      ],
    ),
  );
}

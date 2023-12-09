import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:idute/components/constants/size_config.dart';
import 'package:idute/screens/main/components/home/components/build_app_bar.dart';
import 'package:idute/screens/main/components/home/components/build_card_rows.dart';

import '../../../../../components/widgets/normal_text_widget.dart';

class CardDetails extends StatefulWidget {
  const CardDetails({super.key});

  @override
  State<CardDetails> createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  bool isAudio = Get.arguments["isAudio"];

  @override
  Widget build(BuildContext context) {
    List<bool> isReply = [true, false, false, true];
    List<String> names = [
      "Sufana",
      "Alen Maxwell",
      "Bobby Deol",
      "Ranbeer Kapoor"
    ];
    return Scaffold(
      appBar: buildAppBar(false),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildContent(),
          const Divider(
            thickness: 1,
          ),
          _buildComments(isReply, names),
        ],
      ),
    );
  }

  Padding _buildContent() {
    return Padding(
      padding: EdgeInsets.only(
        left: getProportionateScreenWidth(24),
        right: getProportionateScreenWidth(7),
        top: getProportionateScreenHeight(16),
        bottom: getProportionateScreenHeight(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          buildFirstRow(2),
          buildSizeHeight(height: 27),
          buildSecondRow(),
          buildSizeHeight(height: 24),
          buildThirdRow(),
          isAudio ? buildSizeHeight(height: 20) : Container(),
          isAudio ? buildFourthRow() : Container(),
          buildSizeHeight(height: 20),
          buildFifthRow(false),
        ],
      ),
    );
  }

  Expanded _buildComments(List<bool> isReply, List<String> names) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return _buildCommentLoop(isReply[index], names[index]);
        },
        separatorBuilder: (context, index) => const Divider(
          thickness: 1,
        ),
        itemCount: 4,
      ),
    );
  }

  Padding _buildCommentLoop(bool isReply, String name) {
    return Padding(
      padding: EdgeInsets.only(
        left: getProportionateScreenWidth(11),
        right: getProportionateScreenWidth(30),
        top: getProportionateScreenHeight(8),
        bottom: getProportionateScreenHeight(8),
      ),
      child: Column(
        children: [
          _buildChatContent(name),
          isReply ? _buildReplies(isReply) : Container(),
        ],
      ),
    );
  }

  Widget _buildReplies(bool isReply) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(
          left: getProportionateScreenWidth(42),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildSizeHeight(height: 10),
            isReply
                ? buildText(
                    text: "Replies:",
                    txtSize: 8,
                    color: const Color(0xFFB6B6B6),
                  )
                : Container(),
            buildSizeHeight(height: 7),
            _buildChatContent("Robert"),
          ],
        ),
      ),
    );
  }

  Row _buildChatContent(String name) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          "assets/logo/logo_5.svg",
          height: 35,
          width: 35,
        ),
        buildSizeWidth(width: 7),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildText(
              text: name,
              txtSize: 12,
              fontWeight: FontWeight.bold,
            ),
            buildSizeHeight(height: 2),
            buildText(
              text: "10 min ago",
              txtSize: 8,
              color: const Color(0xFFB6B6B6),
            ),
            buildSizeHeight(height: 5),
            buildText(
              text:
                  "Lorem ipsum dolor sit amet consectetur adipiscing \nelit Ut et.",
              txtSize: 10,
              maxLine: 3,
            ),
            buildSizeHeight(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: buildText(
                    text: "4",
                    txtSize: 10,
                  ),
                ),
                buildSizeWidth(width: 4),
                const Icon(
                  Icons.thumb_up_off_alt,
                  color: Colors.white,
                  size: 16,
                ),
                buildSizeWidth(width: 5),
                const Icon(
                  Icons.reply,
                  color: Colors.white,
                  size: 16,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

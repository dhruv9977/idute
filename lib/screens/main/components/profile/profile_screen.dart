import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';

import '../../../../components/constants/size_config.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PlayerController playerController = PlayerController();
    return Scaffold(
      body: AudioFileWaveforms(
        size: Size(
          getProportionateScreenWidth(250),
          getProportionateScreenHeight(20),
        ),
        playerController: playerController,
        enableSeekGesture: true,
        animationDuration: Duration(
          milliseconds: 10,
        ),
        waveformType: WaveformType.long,
        waveformData: [2, 5, 6, 9, 2, 3, 5, 8,9,9,6,3,22,222,],
        playerWaveStyle: const PlayerWaveStyle(
          fixedWaveColor: Colors.white54,
          liveWaveColor: Colors.blueAccent,
        ),
      ),
    );
  }
}

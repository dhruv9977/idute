import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:audioplayers/audioplayers.dart' as ap;
import 'package:get/get.dart';
// import 'package:path_provider/path_provider.dart';

class HomeController extends GetxController implements GetxService {
  PlayerController playerController = PlayerController();
  final isStopped = false.obs;

  @override
  void onInit() async {
    final player = ap.AudioCache(prefix: "assets/images/");
    final url = await player.load("peacock.mp3");
    await playerController.preparePlayer(path: url.path);
    super.onInit();
  }

  @override
  void onClose() async {
    await playerController.pausePlayer();
    playerController.dispose();
    super.onClose();
  }

  void playandPause() async {
    playerController.playerState == PlayerState.playing
        ? await playerController.pausePlayer()
        : await playerController.startPlayer(finishMode: FinishMode.loop);
    isStopped.value = !isStopped.value;
    update();
  }
}

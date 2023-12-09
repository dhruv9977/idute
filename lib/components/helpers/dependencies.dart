import 'package:get/get.dart';

import '../../screens/main/components/home/controller/home_controller.dart';

Future<void> init() async {
//controllers

  Get.lazyPut(
    () => HomeController(),
  );
}

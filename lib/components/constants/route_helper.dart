import 'package:get/get.dart';
import 'package:idute/screens/main/components/home/components/card_details.dart';

import '../../screens/main/main_screen.dart';

class RouteHelper {
  //home
  static const String homeRoute = '/home/';
  static const String detailRoute = '/detail/';

  //getters
  static String getHomeScreen() => homeRoute;
  static String getDetailScreen() => detailRoute;

  // lists
  static List<GetPage> routes = [
    GetPage(
      name: homeRoute,
      page: () {
        return const MainScreen();
      },
    ),
    GetPage(
      name: detailRoute,
      page: () {
        return const CardDetails();
      },
    ),
  ];
}

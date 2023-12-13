import 'package:get/get.dart';

import '../../features/movies/view/layout/layout_screen.dart';
import '../../features/movies/view/splash/splash_screen.dart';

class Routes {
  static const String splashRoute = "/";
  static const String layout = "/layout";
  // home search wishlist
  static const String details = "/details";

  static List<GetPage> routes = [
    GetPage(
        name: splashRoute,
        page: () => const SplashScreen(),
        transition: Transition.cupertino),
    GetPage(name: layout, page: () => const LayoutScreen()),
  ];
}

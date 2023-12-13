import 'package:get/get.dart';
import 'package:movies_app/features/movies/controller/layout_controller.dart';

import '../../features/movies/controller/home_controller.dart';
import '../../features/movies/controller/search_controller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LayoutController>(() => LayoutController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<SearchEController>(() => SearchEController());
  }
}

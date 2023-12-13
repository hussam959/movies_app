import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_app/core/utils/color_manager.dart';
import 'package:movies_app/features/movies/controller/layout_controller.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  LayoutController controller = Get.find<LayoutController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          backgroundColor: ColorManager.grey2,
          body: controller.screens[controller.currentIndex.value],
          bottomNavigationBar: BottomNavigationBar(
            items: controller.items,
            currentIndex: controller.currentIndex.value,
            onTap: (i) {
              controller.changeIndex(i);
            },
          ),
        ));
  }
}

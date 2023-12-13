import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_app/core/utils/asset_manager.dart';
import 'package:movies_app/core/utils/color_manager.dart';
import 'package:movies_app/core/utils/routes_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;

  _startDelay() {
    _timer = Timer(const Duration(milliseconds: 1500), () {
      Get.offAllNamed(Routes.layout);
    });
    return _timer;
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.grey2,
        body: const Center(
          child: Image(image: AssetImage(AssetManager.splashImage)),
        ));
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}

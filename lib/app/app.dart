import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:movies_app/core/bindings/controller_bindings.dart';
import 'package:movies_app/core/utils/routes_manager.dart';
import 'package:movies_app/core/utils/theme_manager.dart';

class MyApp extends StatefulWidget {
  const MyApp._();
  static const instance = MyApp._();
  factory MyApp() => instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height),
      builder: ((context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: getAppTheme(),
          initialRoute: Routes.splashRoute,
          initialBinding: ControllerBindings(),
          getPages: Routes.routes,
        );
      }),
    );
  }
}

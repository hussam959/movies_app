




import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:movies_app/utils/resources/theme_manager.dart';


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
    return GetMaterialApp( 
      debugShowCheckedModeBanner: false, 
      theme: getAppTheme(),
    );
  }
}
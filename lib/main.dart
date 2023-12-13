
import 'package:flutter/material.dart';
import 'package:movies_app/app/app.dart';
import 'package:movies_app/core/services/helpers/sl.dart';
import 'package:movies_app/core/services/network/api_sevice.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  setUp();// locates instances
  await sl<DioHelper>().initDio();
  runApp(MyApp());
}


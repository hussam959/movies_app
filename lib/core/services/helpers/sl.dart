

import 'package:get_it/get_it.dart';
import 'package:movies_app/core/services/network/api_sevice.dart';


final sl = GetIt.instance;

void setUp(){
  sl.registerLazySingleton(() => DioHelper());
}
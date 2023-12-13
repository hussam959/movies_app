// ignore_for_file: unnecessary_null_comparison

import 'dart:developer';

import 'package:get/get.dart';
import 'package:movies_app/core/services/network/api_sevice.dart';

import '../../../app/constants.dart';
import '../../../core/services/helpers/sl.dart';
import '../models/search_model.dart';

class SearchEController extends GetxController {
  RxList<SearchModel> searchedList = <SearchModel>[].obs;
  var isLoadinng = false.obs;

  Future<void> search(String query) async {
    isLoadinng.value = true;
    try {
      final response = await sl<DioHelper>().get(
          url: 'search/movie',
          query: {'api_key': Constants.apiKey, 'query': query});
      searchedList.value = (response!.data['results'] as List)
          .map((e) => SearchModel.fromJson(e))
          .toList();
      searchedList.removeWhere((e) =>
          e.backdropPath == null ||
          e.posterPath == null ||
          e.releaseDate == "" ||
          e.voteAverage == 0);
    } catch (er) {
      log("Error While getting Search List : ${er.toString()}");
    } finally {
      isLoadinng.value = false;
    }
  }
}

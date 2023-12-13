import 'dart:developer';
import 'package:get/get.dart';
import 'package:movies_app/app/constants.dart';
import 'package:movies_app/core/services/network/api_sevice.dart';
import 'package:movies_app/features/movies/models/movie_model.dart';

import '../../../core/services/helpers/sl.dart';

class HomeController extends GetxController {
  List<MovieModel> popularMovies = <MovieModel>[];
  List<MovieModel> topRatedMovies = <MovieModel>[];
  List<MovieModel> upComingMovies = <MovieModel>[];
  List<MovieModel> nowPlayingMovies = <MovieModel>[];

  
  HomeController(){
    getPopularMovies();
    getTopRatedMovies();
    getUpComingMovies();
    getNowPlayingMovies();
  }

  getPopularMovies() async {
    try {
      final response = await sl<DioHelper>()
          .get(url: 'movie/popular', query: {'api_key': Constants.apiKey});

      ResultsModel model = ResultsModel.fromJson(response?.data);
      popularMovies = model.results;
      update();
    } catch (er) {
      log("Error While getting Popular movies: ${er.toString()}");
    }
  }

  getUpComingMovies() async {
    try {
      final response = await sl<DioHelper>()
          .get(url: 'movie/upcoming', query: {'api_key': Constants.apiKey});

      ResultsModel model = ResultsModel.fromJson(response?.data);
      upComingMovies = model.results;
      update();
    } catch (er) {
      log("Error While getting Up Coming movies: ${er.toString()}");
    }
  }

  getTopRatedMovies() async {
    try {
      final response = await sl<DioHelper>()
          .get(url: 'movie/top_rated', query: {'api_key': Constants.apiKey});

      ResultsModel model = ResultsModel.fromJson(response?.data);
      topRatedMovies = model.results;
      update();
    } catch (er) {
      log("Error While getting Top Rated movies: ${er.toString()}");
    }
  }

  getNowPlayingMovies() async {
    try {
      final response = await sl<DioHelper>()
          .get(url: 'movie/now_playing', query: {'api_key': Constants.apiKey});

      ResultsModel model = ResultsModel.fromJson(response?.data);
      nowPlayingMovies = model.results;
      update();
    } catch (er) {
      log("Error While getting Now Playing movies: ${er.toString()}");
    }
  }
}

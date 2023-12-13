// ignore_for_file: prefer_if_null_operators
class MovieModel {
  late int id;
  late String backdropPath;
  late String posterPath;
  late String title;
  late String overview;
  late double voteAverage;
  late String releaseDate;

  MovieModel(
      {required this.id,
      required this.backdropPath,
      required this.posterPath,
      required this.title,
      required this.overview,
      required this.voteAverage,
      required this.releaseDate});

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
        id: json['id'],
        backdropPath: json['backdrop_path'] ?? json['poster_path'],
        posterPath: json['poster_path'] ?? json['backdrop_path'],
        title: json['title'],
        overview: json['overview'],
        voteAverage: json['vote_average'],
        releaseDate: json['release_date']);
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'backdrop_path': backdropPath,
        'poster_path': posterPath,
        'title': title,
        'overview': overview,
        'vote_average': voteAverage,
        'release_date': releaseDate
      };
}

class ResultsModel {
  List<MovieModel> results;

  ResultsModel(this.results);

  factory ResultsModel.fromJson(Map<String, dynamic> json) {
    return ResultsModel(
        (json['results'] as List).map((i) => MovieModel.fromJson(i)).toList());
  }

  Map<String, dynamic> toJson() => {'results': results};
}

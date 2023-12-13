


class SearchModel{
  late int id;
  String? backdropPath;
  String? posterPath;
  late String title;
  late String overview;
  late double voteAverage;
  late String releaseDate;

  SearchModel(
      {required this.id,
      required this.backdropPath,
      required this.posterPath,
      required this.title,
      required this.overview,
      required this.voteAverage,
      required this.releaseDate});

  factory SearchModel.fromJson(Map<String, dynamic> json) {
    return SearchModel(
        id: json['id'],
        backdropPath: json['backdrop_path'],
        posterPath: json['poster_path'],
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
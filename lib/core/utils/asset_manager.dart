const assetPath = "assets/images";

class AssetManager {
  static const String splashImage = "$assetPath/splash/splash.png";
  static const String watchListImage = "$assetPath/svg/watch_list.png";
  static const String searchImage = "$assetPath/svg/search.png";

  static const String baseImageUrl = "https://image.tmdb.org/t/p/w500";

  static String imageUrl(String imagePath) => "$baseImageUrl$imagePath";
}

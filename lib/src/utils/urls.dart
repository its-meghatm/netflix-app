import 'package:netflix/src/utils/api_key.dart';

class Urls {
  static const baseUrl = "https://api.themoviedb.org/3";
  static const trendingUrl = "$baseUrl/trending/all/day?api_key=$apiKey";
  static final searchUrl = baseUrl + "/search/movie?api_key=$apiKey";
}

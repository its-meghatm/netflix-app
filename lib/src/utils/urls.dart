import 'package:netflix/src/utils/api_key.dart';

class Urls {
//   static final baseUrl = "https://3.142.247.21:3000/api/v1/";
  static const baseUrl = "https://api.themoviedb.org/3";
  //static final baseUrl = "https://contest-api.paziq.com/api/v1/";
  // static final baseUrlImage = "https://3.142.247.21:3000";
  static const trendingUrl = "$baseUrl/trending/all/day?api_key=$apiKey";
  static final loginUrl = baseUrl + "login/";
  static final likedFoodUrl = baseUrl + "food-likes/";
  static final getFoodDetails = baseUrl + "food/";
  static final getReview = baseUrl + "ratings-and-review/";
  static final putReview = baseUrl + "ratings-and-review/";
  static final putLikes = baseUrl + "like-food/";
  static final putMustVisit = baseUrl + "must-visit-food/";
  static final forgetPassword = baseUrl + "users/forgot_password/";
  static final changePassword = baseUrl + "users/reset_password/";
  static final updateFoodDetails = baseUrl + "food/";
  static final getFoodType = baseUrl + "food-type/";
  static final logOut = baseUrl + "logout/";
}

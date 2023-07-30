import 'package:get/get.dart';
import '../ui/pages/food/popular_food_details.dart';
import '../ui/pages/food/recommended_food_details.dart';
import '../ui/pages/home/main.dart';

class AppRoutes {
  static const initial = "/";
  static const popularFood = "/popular_food";
  static const recommendedFood = "/recommended_food";

  static String getInitial() => initial;

  static String getPopularFood({required int pageID}) =>
      "$popularFood?pageId=$pageID";

  static String getRecommendedFood() => recommendedFood;

  static List<GetPage> routes = [
    GetPage(
        name: initial,
        page: () {
          return HomeMain();
        }),
    GetPage(
        name: popularFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          return PopularFoodDetails(
            pageId: int.parse(pageId!),
          );
        }),
    GetPage(
        name: recommendedFood,
        page: () {
          return RecommendedFoodDetails();
        }),
  ];
}

import 'package:ecomm_cus/app/ui/pages/cart/cart_page.dart';
import 'package:get/get.dart';
import '../ui/pages/food/popular_food_details.dart';
import '../ui/pages/food/recommended_food_details.dart';
import '../ui/pages/home/main.dart';

class AppRoutes {
  static const initial = "/";
  static const popularFood = "/popular_food";
  static const recommendedFood = "/recommended_food";
  static const cart = "/cart";

  static String getInitial() => initial;

  static String getPopularFood({required int pageID}) =>
      "$popularFood?pageId=$pageID";

  static String getRecommendedFood({required int pageId}) =>
      "$recommendedFood?pageId=$pageId";

  static String getCartPage() => cart;

  static List<GetPage> routes = [
    GetPage(
        name: initial,
        page: () {
          return HomeMain();
        },
        transition: Transition.fadeIn),
    GetPage(
        name: popularFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          return PopularFoodDetails(
            pageId: int.parse(pageId!),
          );
        },
        transition: Transition.fadeIn),
    GetPage(
        name: recommendedFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          return RecommendedFoodDetails(pageId: int.parse(pageId!));
        }),
    GetPage(
        name: cart,
        page: () {
          return CartPage();
        },
        transition: Transition.fadeIn)
  ];
}

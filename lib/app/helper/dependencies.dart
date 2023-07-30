import 'package:get/get.dart';
import '../config/config.dart';
import '../controllers/popular_product.dart';
import '../controllers/recommended_product.dart';
import '../data/repository/popular_product.dart';
import '../data/repository/recommended_product.dart';
import 'api_client.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConfig.baseUrl));

  //repos
  Get.lazyPut(() => PopularProductRepository(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepository(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(repository: Get.find()));
  Get.lazyPut(() => RecommendedProductController(repository: Get.find()));
}

import 'package:get/get.dart';
import '../../helper/api_client.dart';
import '../../service/api.dart';

class RecommendedProductRepository extends GetxService {
  final ApiClient apiClient;

  RecommendedProductRepository({required this.apiClient});

  Future<dynamic> getRecommendedProduct() async {
    return await apiClient.getData(url: ApiService.popularProduct);
  }
}

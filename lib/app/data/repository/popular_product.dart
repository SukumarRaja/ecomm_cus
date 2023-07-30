import 'package:get/get.dart';
import '../../helper/api_client.dart';
import '../../service/api.dart';

class PopularProductRepository extends GetxService {
  final ApiClient apiClient;

  PopularProductRepository({required this.apiClient});

  Future<Response> getPopularProduct() async {
    return await apiClient.getData(url: ApiService.popularProduct);
  }
}

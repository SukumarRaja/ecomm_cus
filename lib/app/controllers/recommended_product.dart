import 'package:get/get.dart';
import '../data/repository/recommended_product.dart';

class RecommendedProductController extends GetxController {
  final RecommendedProductRepository repository;

  RecommendedProductController({required this.repository});

  late List<dynamic> _recommendedProductList = [];

  List<dynamic> get recommendedProductList => _recommendedProductList;

  late bool _isLoaded = false;

  bool get isLoaded => _isLoaded;

  getRecommendedProduct() async {
    Response response = await repository.getRecommendedProduct();
    if (response.statusCode == 200) {
      _recommendedProductList = [];
      _recommendedProductList = response.body['data'];
      _isLoaded = true;
      update();
    } else {
      print('failed');
    }
  }
}

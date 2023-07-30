import 'dart:convert';

import 'package:ecomm_cus/app/data/models/products.dart';
import 'package:get/get.dart';
import '../data/repository/popular_product.dart';

class PopularProductController extends GetxController {
  final PopularProductRepository repository;

  PopularProductController({required this.repository});

  late List<dynamic> _popularProductList = [];

  late bool _isLoaded = false;

  bool get isLoaded => _isLoaded;

  List<dynamic> get popularProductList => _popularProductList;

  getPopularProduct() async {
    Response response = await repository.getPopularProduct();
    if (response.statusCode == 200) {
      print("got products");
      _popularProductList = [];
      _isLoaded = true;

      _popularProductList = response.body['data'];
      print("favi ${popularProductList}");

      // _popularProductList
      //     .addAll(Product.fromJson(response.body).products as Iterable);
      update();
    } else {
      print("failed ${response.statusCode}");
    }
  }
}

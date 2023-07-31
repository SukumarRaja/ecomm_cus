import 'dart:convert';

import 'package:ecomm_cus/app/controllers/cart.dart';
import 'package:ecomm_cus/app/ui/themes/colors.dart';
import 'package:get/get.dart';
import '../data/models/products.dart';
import '../data/repository/popular_product.dart';

class PopularProductController extends GetxController {
  final PopularProductRepository repository;

  PopularProductController({required this.repository});

  late List<dynamic> _popularProductList = [];
  late CartController _cart;

  late bool _isLoaded = false;

  int _quantity = 0;

  int get quantity => _quantity;

  bool get isLoaded => _isLoaded;

  late int _inCartItems = 0;

  int get inCartItems => _inCartItems + _quantity;

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

  setQuantity(bool isIncrement) {
    if (isIncrement) {
      _quantity = checkQuantity(quantity: _quantity + 1);
    } else {
      _quantity = checkQuantity(quantity: _quantity - 1);
    }
    update();
  }

  checkQuantity({required int quantity}) {
    if ((_inCartItems + quantity) < 0) {
      Get.snackbar("Item", "You can't reduce more !",
          backgroundColor: AppColors.primary, colorText: AppColors.white);
      return 0;
    } else if ((_inCartItems + quantity) > 20) {
      Get.snackbar("Item", "You can't add more !",
          backgroundColor: AppColors.primary, colorText: AppColors.white);
      return 20;
    } else {
      return quantity;
    }
  }

  initProduct({required ProductModel product, required CartController cart}) {
    _quantity = 0;
    _inCartItems = 0;
    _cart = cart;
    var exist = false;
    exist = _cart.existInCart(product: product);
    if (exist) {
      _inCartItems = _cart.getQuantity(product: product);
    }
  }

  addItem({required ProductModel product}) {
    // if (_quantity > 0) {
    _cart.addItem(product: product, quantity: _quantity);
    _quantity = 0;
    _inCartItems = _cart.getQuantity(product: product);
    _cart.items.forEach((key, value) {
      print("The id is ${value.id} The quantity is ${value.quantity}");
    });

    //   } else {
    //     Get.snackbar("Item", "You should at least add an item in the cart",
    //         backgroundColor: AppColors.primary, colorText: AppColors.white);
    //   }
  }
}

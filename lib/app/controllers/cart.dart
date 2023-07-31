import 'package:get/get.dart';
import '../data/models/cart.dart';
import '../data/models/products.dart';
import '../data/repository/cart_repo.dart';
import '../ui/themes/colors.dart';

class CartController extends GetxController {
  final CartRepository repository;

  CartController({required this.repository});

  final Map<int, CartModel> _items = {};

  Map<int, CartModel> get items => _items;

  addItem({required ProductModel product, quantity}) {
    var totalQuantity = 0;
    if (_items.containsKey(product.id)) {
      _items.update(product.id, (value) {
        totalQuantity = value.quantity;
        return CartModel(
          id: value.id,
          name: value.name,
          price: value.price,
          image: value.image,
          quantity: value.quantity + quantity,
          isExist: true,
          time: DateTime.now().toString(),
        );
      });

      if (totalQuantity <= 0) {
        _items.remove(product.id);
      }
    } else {
      if (quantity > 0) {
        _items.putIfAbsent(product.id, () {
          return CartModel(
            id: product.id,
            name: product.name,
            price: product.price,
            image: product.img,
            quantity: quantity,
            isExist: true,
            time: DateTime.now().toString(),
          );
        });
      } else {
        Get.snackbar("Item", "You should at least add an item in the cart",
            backgroundColor: AppColors.primary, colorText: AppColors.white);
      }
    }
  }

  bool existInCart({required ProductModel product}) {
    if (_items.containsKey(product.id)) {
      return true;
    }
    return false;
  }

  getQuantity({required ProductModel product}) {
    var quantity = 0;
    if (_items.containsKey(product.id)) {
      _items.forEach((key, value) {
        if (key == product.id) {
          quantity = value.quantity;
        }
      });
    }
    return quantity;
  }
}

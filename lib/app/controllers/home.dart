import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.put(HomeController());
  PageController pageController = PageController(viewportFraction: 0.85);

  final _currentPageValue = 0.0.obs;

  get currentPageValue => _currentPageValue.value;

  set currentPageValue(value) {
    _currentPageValue.value = value;
  }

  final _scaleFactor = 0.8.obs;

  get scaleFactor => _scaleFactor.value;

  set scaleFactor(value) {
    _scaleFactor.value = value;
  }

  final _height = 220.obs;

  get height => _height.value;

  set height(value) {
    _height.value = value;
  }
  final _imageIndicator = 0.obs;

  get imageIndicator => _imageIndicator.value;

  set imageIndicator(value) {
    _imageIndicator.value = value;
  }

  pageListener() {
    print("hkjhkj");
    pageController.addListener(() {
      currentPageValue = pageController.page!;
    });
    update();
  }

  transform({index}) {
    Matrix4 matrix = Matrix4.identity();
    if (index == currentPageValue.floor()) {
      var currScale = 1 - (currentPageValue - index) * (1 - scaleFactor);
      var currTrans = height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale.toDouble(), 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == currentPageValue.floor() + 1) {
      var currScale =
          scaleFactor + (currentPageValue - index) * (1 - scaleFactor);
      var currTrans = height * (1 - currScale) / 2;

      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == currentPageValue.floor() - 1) {
      var currScale = 1 - (currentPageValue - index) * (1 - scaleFactor);
      var currTrans = height * (1 - currScale) / 2;

      matrix = Matrix4.diagonal3Values(1, currScale.toDouble(), 1);
      matrix = Matrix4.diagonal3Values(1, currScale.toDouble(), 1)
        ..setTranslationRaw(0, currTrans, 0);
    }else{
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale.toDouble(), 1)
        ..setTranslationRaw(0, height*(1-scaleFactor)/2, 0);

    }
    return matrix;
  }
}

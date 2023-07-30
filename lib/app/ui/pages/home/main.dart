import 'package:ecomm_cus/app/ui/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/home.dart';
import '../../../controllers/popular_product.dart';
import '../../../utility/dimensions.dart';
import '../../widgets/home/dot_indicator.dart';
import '../../widgets/home/food_list.dart';
import '../../widgets/home/location_and_search.dart';
import '../../widgets/home/popular_text.dart';
import '../../widgets/home/slider.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint(
        "Current height is ${MediaQuery.of(context).size.height.toString()}");
    Get.find<PopularProductController>().getPopularProduct();
    return GetBuilder(
        init: HomeController(),
        initState: (_) {
          HomeController.to.pageListener();
        },
        builder: (_) {
          return Scaffold(
            body: Column(
              children: [
                //search
                const LocationAndSearch(),

                //slider
                GetBuilder<PopularProductController>(builder: (controller) {
                  return controller.isLoaded
                      ? SliderWidget(
                          items: controller.popularProductList,
                        )
                      : const CircularProgressIndicator(
                          color: AppColors.primary,
                        );
                }),

                //dot indicator
                GetBuilder<PopularProductController>(builder: (controller) {
                  return DotIndicator(
                    length: controller.popularProductList.length,
                  );
                }),

                SizedBox(
                  height: Dimensions.height30,
                ),

                //Recommended text
                const RecommendedText(),

                //Recommended list
                const RecommendedFoodList()
              ],
            ),
          );
        });
  }
}

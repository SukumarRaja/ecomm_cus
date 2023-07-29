import 'package:ecomm_cus/app/ui/themes/colors.dart';
import 'package:ecomm_cus/app/ui/widgets/food/popular/icon.dart';
import 'package:flutter/material.dart';
import '../../../utility/dimensions.dart';
import '../../widgets/common/text.dart';
import '../../widgets/icon_and_text.dart';

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImageSize,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/food.jpg'))),
              )),
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PopularPageIcon(icon: Icons.arrow_back_ios),
                PopularPageIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImageSize - 20,
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      topLeft: Radius.circular(Dimensions.radius20)),
                  color: AppColors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BigText(text: "Chinse Inside"),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(5, (index) {
                          return const Icon(
                            Icons.star,
                            color: AppColors.primary,
                            size: 15,
                          );
                        }),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const SmallText(text: "4.5"),
                      const SizedBox(
                        width: 10,
                      ),
                      const SmallText(text: "1287"),
                      const SizedBox(
                        width: 10,
                      ),
                      const SmallText(text: "Commands"),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconAndText(
                          icon: Icons.circle_sharp,
                          text: "Normal",
                          iconColor: AppColors.icon1),
                      IconAndText(
                          icon: Icons.location_on,
                          text: "1.7km",
                          iconColor: AppColors.primary),
                      IconAndText(
                          icon: Icons.access_time_rounded,
                          text: "32min",
                          iconColor: AppColors.icon2),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

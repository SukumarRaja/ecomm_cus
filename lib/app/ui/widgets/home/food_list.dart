import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utility/dimensions.dart';
import '../../pages/food/recommended_food_details.dart';
import '../../themes/colors.dart';
import '../common/text.dart';
import '../icon_and_text.dart';

class RecommendedFoodList extends StatelessWidget {
  const RecommendedFoodList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.to(() => const RecommendedFoodDetails());
              },
              child: Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    bottom: Dimensions.height10),
                child: Row(
                  children: [
                    Container(
                      height: Dimensions.imageSize,
                      width: Dimensions.imageSize,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius20),
                          color: AppColors.white,
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/food.jpg'))),
                    ),
                    Expanded(
                      child: Container(
                        height: Dimensions.textContainerSize,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(Dimensions.radius20),
                                bottomRight:
                                    Radius.circular(Dimensions.radius20)),
                            color: AppColors.white),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: Dimensions.width10,
                              right: Dimensions.width10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const BigText(
                                  text: "Nutrition fruit meal in china"),
                              SizedBox(
                                height: Dimensions.height10,
                              ),
                              const SmallText(
                                  text: "Nutrition fruit meal in china"),
                              SizedBox(
                                height: Dimensions.height10,
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

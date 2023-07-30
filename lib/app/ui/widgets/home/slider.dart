import 'package:ecomm_cus/app/config/config.dart';
import 'package:ecomm_cus/app/ui/pages/food/popular_food_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/home.dart';
import '../../../utility/dimensions.dart';
import '../../themes/colors.dart';
import '../common/text.dart';
import '../icon_and_text.dart';

class SliderWidget extends StatelessWidget {
  SliderWidget({Key? key, required this.items}) : super(key: key);
  dynamic items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimensions.sliderMainContainer,
      // color: Colors.red,
      child: PageView.builder(
          itemCount: items.length,
          controller: HomeController.to.pageController,
          onPageChanged: (index) {
            HomeController.to.imageIndicator = index;
          },
          itemBuilder: (context, position) {
            return Obx(() => Transform(
                  transform: HomeController.to.transform(index: position),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => const PopularFoodDetails());
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: Dimensions.sliderContainer,
                          margin: EdgeInsets.only(
                              left: Dimensions.width10,
                              right: Dimensions.width10),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius30),
                              color: position.isEven
                                  ? AppColors.primary
                                  : const Color(0xFF9294cc),
                              image: DecorationImage(
                                  fit: BoxFit.cover, image: NetworkImage(
                                      // '${AppConfig.baseUrl}/uploads/${items[position]['photo']}'
                                      '${AppConfig.imageUrl}/${items[position]['photo']}'))),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: Dimensions.sliderTextContainer,
                            margin: EdgeInsets.only(
                                left: Dimensions.width30,
                                right: Dimensions.width30,
                                bottom: Dimensions.height30),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(Dimensions.radius20),
                                color: AppColors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(.3),
                                      blurRadius: 5.0,
                                      offset: const Offset(0, 5)),
                                  const BoxShadow(
                                      color: AppColors.white,
                                      offset: Offset(-5, 0)),
                                  const BoxShadow(
                                      color: AppColors.white,
                                      offset: Offset(5, 0)),
                                ]),
                            child: Container(
                              padding: EdgeInsets.only(
                                  right: 15,
                                  left: 15,
                                  top: Dimensions.height15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BigText(text: "${items[position]['name']}"),
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
                        ),
                      ],
                    ),
                  ),
                ));
          }),
    );
  }
}

import 'package:ecomm_cus/app/controllers/popular_product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utility/dimensions.dart';
import '../../themes/colors.dart';
import '../../widgets/common/expandable_text.dart';
import '../../widgets/common/text.dart';
import '../../widgets/food/popular/icon.dart';
import '../../widgets/icon_and_text.dart';

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({super.key, required this.pageId});

  final int pageId;

  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<PopularProductController>().popularProductList[pageId];
    print("page id ${pageId.toString()}");
    print("product name is ${product['name']}");
    return Scaffold(
      backgroundColor: AppColors.white,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PopularPageIcon(
                  icon: Icons.arrow_back_ios,
                  onTap: () {
                    Get.back();
                  },
                ),
                PopularPageIcon(
                  icon: Icons.shopping_cart_outlined,
                  onTap: () {},
                ),
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(
                        text: "Chinse Inside",
                        fontSize: Dimensions.font26,
                      ),
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
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  const BigText(text: "Introduce"),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  const Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableText(
                        text:
                            "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeight,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20),
        decoration: BoxDecoration(
            color: AppColors.buttonBackground,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  right: Dimensions.width20,
                  left: Dimensions.width20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.white),
              child: Row(
                children: [
                  const Icon(
                    Icons.remove,
                    color: AppColors.sign,
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  const BigText(text: "0"),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  const Icon(
                    Icons.add,
                    color: AppColors.sign,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  right: Dimensions.width20,
                  left: Dimensions.width20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.primary),
              child: const BigText(
                text: "\u20B90 | Add to cart",
                color: AppColors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

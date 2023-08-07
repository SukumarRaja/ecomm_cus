import 'package:ecomm_cus/app/controllers/popular_product.dart';
import 'package:ecomm_cus/app/controllers/recommended_product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utility/dimensions.dart';
import '../../themes/colors.dart';
import '../../widgets/common/expandable_text.dart';
import '../../widgets/common/text.dart';
import '../../widgets/food/popular/icon.dart';
import '../cart/cart_page.dart';

class RecommendedFoodDetails extends StatelessWidget {
  const RecommendedFoodDetails({super.key, required this.pageId});

  final int pageId;

  @override
  Widget build(BuildContext context) {
    dynamic product;
    // var product  = Get.find<RecommendedProductController>().recommendedProductList[pageId];
    // Get.find<PopularProductController>()
    //     .initProduct(product: product, cart: Get.find<CartController>());
    return Scaffold(
      backgroundColor: AppColors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            backgroundColor: AppColors.yellow,
            expandedHeight: 300,
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PopularPageIcon(
                  icon: Icons.clear,
                  onTap: () {
                    Get.back();
                  },
                ),
                GetBuilder<PopularProductController>(builder: (controller) {
                  return Stack(
                    children: [
                      PopularPageIcon(
                        icon: Icons.shopping_cart_outlined,
                        onTap: () {},
                      ),
                      Positioned(
                        right: 0,
                        child: PopularPageIcon(
                          icon: Icons.circle,
                          onTap: () {
                            Get.to(() => CartPage());
                          },
                          size: 20,
                          iconColor: Colors.transparent,
                          backgroundColor: AppColors.primary,
                        ),
                      ),
                      // Get.find<PopularProductController>().totalItems >= 1
                      //     ? PopularPageIcon(
                      //         icon: Icons.circle,
                      //         onTap: () {
                      //          Get.to(() => CartPage());
                      //         },
                      //         size: 20,
                      //         iconColor: Colors.transparent,
                      //         backgroundColor: AppColors.primary,
                      //       )
                      //     : SizedBox()

                      // Get.find<PopularProductController>().totalItems >= 1
                      //     ? Positioned(
                      //         right: 3,
                      //         top: 3,
                      //         child: BigText(
                      //           text: Get.find<PopularProductController>()
                      //               .totalItems
                      //               .toString(),
                      //           fontSize: 12,
                      //           color: AppColors.white,
                      //         ))
                      //     : SizedBox()

                      const Positioned(
                          right: 3,
                          top: 3,
                          child: BigText(
                            text: "0",
                            fontSize: 12,
                            color: AppColors.white,
                          ))
                    ],
                  );
                })
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                  // margin: EdgeInsets.only(
                  //     left: Dimensions.width20, right: Dimensions.width20),
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  padding: const EdgeInsets.only(top: 5, bottom: 10),
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimensions.radius20),
                          topRight: Radius.circular(Dimensions.radius20))),
                  child: BigText(
                    text: "Chinise Side",
                    fontSize: Dimensions.font26,
                  )),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/food.jpg',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  child: const ExpandableText(
                      text:
                          "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: GetBuilder<PopularProductController>(
        builder: (controller) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.only(
                    left: Dimensions.width20 * 2.5,
                    right: Dimensions.width20 * 2.5,
                    top: Dimensions.height10,
                    bottom: Dimensions.height10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PopularPageIcon(
                      icon: Icons.remove,
                      iconSize: Dimensions.iconSize24,
                      backgroundColor: AppColors.primary,
                      iconColor: AppColors.white,
                      onTap: () {
                        controller.setQuantity(false);
                      },
                    ),
                    BigText(
                      text: "\u20B9100 X ${controller.inCartItems}",
                      color: AppColors.black,
                      fontSize: Dimensions.font26,
                    ),
                    PopularPageIcon(
                      icon: Icons.add,
                      iconSize: Dimensions.iconSize24,
                      backgroundColor: AppColors.primary,
                      iconColor: AppColors.white,
                      onTap: () {
                        controller.setQuantity(true);
                      },
                    ),
                  ],
                ),
              ),
              Container(
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
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius20),
                            color: AppColors.white),
                        child: const Icon(
                          Icons.favorite,
                          color: AppColors.primary,
                        )),
                    GestureDetector(
                      onTap: () {
                        controller.addItem(product: product);
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                            top: Dimensions.height20,
                            bottom: Dimensions.height20,
                            right: Dimensions.width20,
                            left: Dimensions.width20),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius20),
                            color: AppColors.primary),
                        child: const BigText(
                          text: "\u20B90 | Add to cart",
                          color: AppColors.white,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

import 'package:ecomm_cus/app/config/config.dart';
import 'package:ecomm_cus/app/controllers/cart.dart';
import 'package:ecomm_cus/app/ui/pages/home/main.dart';
import 'package:ecomm_cus/app/ui/widgets/common/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utility/dimensions.dart';
import '../../themes/colors.dart';
import '../../widgets/food/popular/icon.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: Dimensions.height20 * 3,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                children: [
                  PopularPageIcon(
                    icon: Icons.arrow_back_ios,
                    onTap: () {},
                    iconColor: AppColors.white,
                    backgroundColor: AppColors.primary,
                    iconSize: Dimensions.iconSize24,
                  ),
                  const Spacer(),
                  PopularPageIcon(
                    icon: Icons.home,
                    onTap: () {
                      Get.back();
                      Get.back();
                    },
                    iconColor: AppColors.white,
                    backgroundColor: AppColors.primary,
                    iconSize: Dimensions.iconSize24,
                  ),
                  SizedBox(
                    width: Dimensions.width20,
                  ),
                  PopularPageIcon(
                    icon: Icons.shopping_cart,
                    onTap: () {},
                    iconColor: AppColors.white,
                    backgroundColor: AppColors.primary,
                    iconSize: Dimensions.iconSize24,
                  )
                ],
              )),
          Positioned(
              top: Dimensions.height20 * 5,
              left: Dimensions.width20,
              right: Dimensions.width20,
              bottom: 0,
              child: Container(
                margin: EdgeInsets.only(top: Dimensions.height15),
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: GetBuilder<CartController>(builder: (controller) {
                    // var cartList = controller.getItems;
                    dynamic cartList;
                    return ListView.builder(
                        itemCount: 10,
                        // itemCount: cartList.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            // color: Colors.red,
                            width: double.maxFinite,
                            height: 100,
                            child: Row(
                              children: [
                                Container(
                                  height: Dimensions.height20 * 5,
                                  width: Dimensions.height20 * 5,
                                  margin: EdgeInsets.only(
                                      bottom: Dimensions.height10),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'assets/images/food.jpg')
                                          // image: NetworkImage(AppConfig.baseUrl+AppConfig.imageUrl+controller.getItems[index].image)
                                          ),
                                      borderRadius: BorderRadius.circular(
                                          Dimensions.radius20),
                                      color: AppColors.white),
                                ),
                                SizedBox(
                                  width: Dimensions.width10,
                                ),
                                Expanded(
                                  child: Container(
                                    height: Dimensions.height20 * 5,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        BigText(
                                          text: "Bitter Orange Juice",
                                          // text: "${controller.getItems[index].name}",
                                          color:
                                              AppColors.black.withOpacity(.5),
                                        ),
                                        SmallText(text: "Spicy"),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            BigText(
                                              text: "\u20B9 33",
                                              // text: "\u20B9 ${controller.getItems[index].price}",
                                              color: AppColors.redAccent,
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                  top: Dimensions.height10,
                                                  bottom: Dimensions.height10,
                                                  right: Dimensions.width10,
                                                  left: Dimensions.width10),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          Dimensions.radius20),
                                                  color: AppColors.white),
                                              child: Row(
                                                children: [
                                                  GestureDetector(
                                                    onTap: () {
                                                      // controller.setQuantity(false);
                                                    },
                                                    child: const Icon(
                                                      Icons.remove,
                                                      color: AppColors.sign,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width:
                                                        Dimensions.width10 / 2,
                                                  ),
                                                  // BigText(text: "${cartList[index].quantity}"),
                                                  BigText(text: "0"),
                                                  SizedBox(
                                                    width:
                                                        Dimensions.width10 / 2,
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      // controller.setQuantity(true);
                                                    },
                                                    child: const Icon(
                                                      Icons.add,
                                                      color: AppColors.sign,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        });
                  }),
                ),
              ))
        ],
      ),
    );
  }
}

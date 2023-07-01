import 'package:ecomm_cus/app/controllers/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../themes/colors.dart';
import '../../widgets/common/text.dart';
import '../../widgets/icon_and_text.dart';

class HomeMain extends StatelessWidget {
  HomeMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                Container(
                  child: Container(
                    margin: const EdgeInsets.only(top: 45, bottom: 15),
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(
                              text: "Country",
                              color: AppColors.primary,
                            ),
                            Row(
                              children: [
                                SmallText(
                                  text: "Country",
                                  color: Colors.black45,
                                ),
                                Icon(Icons.arrow_drop_down_rounded)
                              ],
                            ),
                          ],
                        ),
                        Container(
                          height: 45,
                          width: 45,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: AppColors.primary),
                          child: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                //slider
                Container(
                  height: 320,
                  // color: Colors.red,
                  child: PageView.builder(
                      itemCount: 5,
                      controller: HomeController.to.pageController,
                      onPageChanged: (index) {
                        HomeController.to.imageIndicator = index;
                      },
                      itemBuilder: (context, position) {
                        return Obx(() => Transform(
                              transform:
                                  HomeController.to.transform(index: position),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 220,
                                    margin: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: position.isEven
                                            ? AppColors.primary
                                            : const Color(0xFF9294cc),
                                        image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'assets/images/food.jpg'))),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      height: 120,
                                      margin: const EdgeInsets.only(
                                          left: 30, right: 30, bottom: 30),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: AppColors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color:
                                                    Colors.grey.withOpacity(.3),
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
                                        padding: const EdgeInsets.only(
                                            right: 15, left: 15, top: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const BigText(
                                                text: "Chinse Inside"),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Wrap(
                                                  children:
                                                      List.generate(5, (index) {
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
                                                const SmallText(
                                                    text: "Commands"),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                IconAndText(
                                                    icon: Icons.circle_sharp,
                                                    text: "Normal",
                                                    iconColor: AppColors.icon1),
                                                IconAndText(
                                                    icon: Icons.location_on,
                                                    text: "1.7km",
                                                    iconColor:
                                                        AppColors.primary),
                                                IconAndText(
                                                    icon: Icons
                                                        .access_time_rounded,
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
                            ));
                      }),
                ),

                //dot indicator
                SizedBox(
                  height: 15,
                  child: Center(
                    child: ListView.builder(
                        itemCount: 5,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Obx(() => Container(
                                height: 8,
                                width: index == HomeController.to.imageIndicator
                                    ? 18
                                    : 10,
                                margin: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                    shape: index ==
                                            HomeController.to.imageIndicator
                                        ? BoxShape.rectangle
                                        : BoxShape.circle,
                                    borderRadius: index ==
                                            HomeController.to.imageIndicator
                                        ? BorderRadius.circular(5)
                                        : null,
                                    color: index ==
                                            HomeController.to.imageIndicator
                                        ? AppColors.primary
                                        : Colors.grey.withOpacity(.4)),
                              ));
                        }),
                  ),
                )
              ],
            ),
          );
        });
  }
}

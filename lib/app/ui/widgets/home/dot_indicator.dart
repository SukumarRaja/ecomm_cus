import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/home.dart';
import '../../themes/colors.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({Key? key, required this.length}) : super(key: key);
  final int length;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 15,
      child: Center(
        child: ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Obx(() => Container(
                    height: 8,
                    width: index == HomeController.to.imageIndicator ? 18 : 10,
                    margin: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        shape: index == HomeController.to.imageIndicator
                            ? BoxShape.rectangle
                            : BoxShape.circle,
                        borderRadius: index == HomeController.to.imageIndicator
                            ? BorderRadius.circular(5)
                            : null,
                        color: index == HomeController.to.imageIndicator
                            ? AppColors.primary
                            : Colors.grey.withOpacity(.4)),
                  ));
            }),
      ),
    );
  }
}

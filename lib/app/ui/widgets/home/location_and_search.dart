import 'package:flutter/material.dart';
import '../../../utility/dimensions.dart';
import '../../themes/colors.dart';
import '../common/text.dart';

class LocationAndSearch extends StatelessWidget {
  const LocationAndSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.only(
            top: Dimensions.height45, bottom: Dimensions.height15),
        padding: EdgeInsets.only(
            left: Dimensions.width20, right: Dimensions.width20),
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
              height: Dimensions.height45,
              width: Dimensions.height45,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                  color: AppColors.primary),
              child: Icon(
                Icons.search,
                color: Colors.white,
                size: Dimensions.iconSize24,
              ),
            )
          ],
        ),
      ),
    );
  }
}

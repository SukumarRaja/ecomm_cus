import 'package:flutter/material.dart';
import '../../../utility/dimensions.dart';
import '../../themes/colors.dart';
import '../common/text.dart';

class RecommendedText extends StatelessWidget {
  const RecommendedText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: Dimensions.width30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const BigText(text: "Recommended"),
          SizedBox(
            width: Dimensions.width10,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 3),
            child: BigText(
              text: ".",
              color: AppColors.black.withOpacity(.25),
            ),
          ),
          SizedBox(
            width: Dimensions.width10,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 2),
            child: const SmallText(
              text: "Food pairing",
            ),
          ),
        ],
      ),
    );
  }
}

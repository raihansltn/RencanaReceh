import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class HomeFourItemWidget extends StatelessWidget {
  const HomeFourItemWidget({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: AppDecoration.card2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.h),
          CustomImageView(
            imagePath: ImageConstant.imgIconCategory,
            height: 28.h,
            width: 30.h,
          ),
          SizedBox(height: 12.h),
          Text(
            "Account \nand Card",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.labelLargeMedium.copyWith(
              height: 1.33,
            ),
          )
        ],
      ),
    );
  }
}

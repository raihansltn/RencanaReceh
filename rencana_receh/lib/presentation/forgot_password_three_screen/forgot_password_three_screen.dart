import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordThreeScreen extends StatelessWidget {
  ForgotPasswordThreeScreen({Key? key})
      : super(
          key: key,
        );
  TextEditingController codeoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onPrimary,
      resizeToAvoidBottomInset: false,
      appBar: _buildAppbar(context),
      body: SafeArea(
        top: false,
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 24.h,
            top: 6.h,
            right: 24.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildCard(context),
              SizedBox(height: 66.h),
              Text(
                "Change your phone number",
                style: CustomTextStyles.labelLargeCyan800,
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgUser,
        margin: EdgeInsets.only(left: 24.h),
      ),
      title: AppbarTitle(
        text: "Forgot password",
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildCard(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.h,
      ),
      decoration: AppDecoration.neutral6.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Type a code",
            style: CustomTextStyles.labelLargeBlack900,
          ),
          SizedBox(height: 12.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                Expanded(
                  child: CustomTextFormField(
                    controller: codeoneController,
                    hintText: "Code",
                    textInputAction: TextInputAction.done,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 12.h,
                    ),
                    borderDecoration: TextFormFieldStyleHelper.outlineTealTL14,
                  ),
                ),
                SizedBox(width: 12.h),
                CustomElevatedButton(
                  width: 100.h,
                  text: "Resend",
                  buttonStyle: CustomButtonStyles.fillTeal,
                  buttonTextStyle: CustomTextStyles.titleSmallBluegray100,
                )
              ],
            ),
          ),
          SizedBox(height: 22.h),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "We texted you a code to verify your phone number ",
                  style: CustomTextStyles.titleSmallBlack900,
                ),
                TextSpan(
                  text: "(+62) 82-296-948-315",
                  style: CustomTextStyles.titleSmallCyan800,
                )
              ],
            ),
            textAlign: TextAlign.left,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 8.h),
          Text(
            "This code will expired 10 minutes after this message. If you don't get a message.",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleSmall!.copyWith(
              height: 1.50,
            ),
          ),
          SizedBox(height: 28.h),
          CustomElevatedButton(
            text: "Change password",
            buttonTextStyle: CustomTextStyles.titleMediumCyan800,
          )
        ],
      ),
    );
  }
}

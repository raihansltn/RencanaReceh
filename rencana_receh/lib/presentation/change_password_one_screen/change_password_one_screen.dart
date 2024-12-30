import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ChangePasswordOneScreen extends StatelessWidget {
  ChangePasswordOneScreen({Key? key})
      : super(
          key: key,
        );
  TextEditingController newpasswordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onPrimary,
      resizeToAvoidBottomInset: false,
      appBar: _buildAppbar(context),
      body: SafeArea(
        top: false,
        child: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              left: 24.h,
              top: 6.h,
              right: 24.h,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [_buildCard(context)],
            ),
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
        text: "Change password",
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildCard(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(
        left: 14.h,
        top: 14.h,
        right: 14.h,
      ),
      decoration: AppDecoration.neutral6.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Type your new password",
                  style: CustomTextStyles.labelLargeBlack900,
                ),
                SizedBox(height: 4.h),
                CustomTextFormField(
                  controller: newpasswordController,
                  hintText: "**********",
                  textInputType: TextInputType.visiblePassword,
                  suffix: Container(
                    margin: EdgeInsets.fromLTRB(12.h, 10.h, 10.h, 10.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIcon,
                      height: 18.h,
                      width: 18.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 44.h,
                  ),
                  obscureText: true,
                  contentPadding: EdgeInsets.all(10.h),
                  borderDecoration: TextFormFieldStyleHelper.outlineTealTL14,
                )
              ],
            ),
          ),
          SizedBox(height: 18.h),
          SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Confirm password",
                  style: CustomTextStyles.labelLargeBlack900,
                ),
                SizedBox(height: 4.h),
                CustomTextFormField(
                  controller: confirmpasswordController,
                  hintText: "**********",
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  suffix: Container(
                    margin: EdgeInsets.fromLTRB(12.h, 10.h, 10.h, 10.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgEyeOff,
                      height: 18.h,
                      width: 20.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 44.h,
                  ),
                  obscureText: true,
                  contentPadding: EdgeInsets.all(10.h),
                  borderDecoration: TextFormFieldStyleHelper.outlineTealTL14,
                )
              ],
            ),
          ),
          SizedBox(height: 64.h),
          CustomElevatedButton(
            text: "Change password",
            buttonStyle: CustomButtonStyles.fillTeal,
            buttonTextStyle: CustomTextStyles.titleMediumBluegray100,
          )
        ],
      ),
    );
  }
}

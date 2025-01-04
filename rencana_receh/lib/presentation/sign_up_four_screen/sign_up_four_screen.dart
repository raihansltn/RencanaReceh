import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpFourScreen extends StatelessWidget {
  SignUpFourScreen({Key? key})
      : super(
          key: key,
        );
  TextEditingController phoneNumberController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.teal200,
      appBar: _buildAppbar(context),
      body: SafeArea(
        top: false,
        child: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              top: 8.h,
              bottom: 2.h,
            ),
            child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillOnPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL30,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 32.h),
                    Container(
                      height: 44.h,
                      width: double.maxFinite,
                      margin: EdgeInsets.only(
                        left: 92.h,
                        right: 82.h,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Text(
                            "Selamat Datang",
                            style: CustomTextStyles.headlineSmallCyan800,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Bersama Rencana Receh",
                              style: CustomTextStyles.labelLargeBluegray900,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 154.h,
                      width: 132.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 130.h,
                            width: 130.h,
                            decoration: BoxDecoration(
                              color: appTheme.blueGray100,
                              borderRadius: BorderRadius.circular(
                                64.h,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 18.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "R",
                                        style: CustomTextStyles.poppinsCyan800,
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 22.h),
                                          child: Text(
                                            "R",
                                            style: theme.textTheme.displayLarge,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 64.h),
                    SizedBox(
                      height: 408.h,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          _buildColumnloginone(context),
                          Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(vertical: 6.h),
                            decoration: AppDecoration.outlineTeal.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL30,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgGroup93,
                                  height: 72.h,
                                  width: 62.h,
                                ),
                                SizedBox(height: 318.h)
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 54.h,
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(left: 24.h),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      title: AppbarSubtitle(
        text: "Sign up",
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumncontinuet(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 14.h,
        right: 22.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Continue to icloud",
            style: CustomTextStyles.titleSmallBluegray400,
          ),
          SizedBox(height: 4.h),
          CustomTextFormField(
            controller: phoneNumberController,
            hintText: "Email or Phone Number",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.emailAddress,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 12.h,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineTealTL14,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnloginone(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(bottom: 60.h),
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 14.h),
                child: Text(
                  "Login",
                  style: CustomTextStyles.headlineSmallCyan800,
                ),
              ),
            ),
            SizedBox(height: 4.h),
            _buildColumncontinuet(context),
            SizedBox(height: 20.h),
            Text(
              "Forget Account?",
              style: CustomTextStyles.labelLargeCyan800,
            ),
            SizedBox(height: 10.h),
            CustomElevatedButton(
              text: "Next",
              margin: EdgeInsets.only(left: 6.h),
              buttonStyle: CustomButtonStyles.fillTeal,
              buttonTextStyle: CustomTextStyles.titleMediumBluegray100,
            )
          ],
        ),
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}

import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpThreeScreen extends StatelessWidget {
  SignUpThreeScreen({Key? key})
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
              bottom: 4.h,
            ),
            child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  left: 20.h,
                  top: 32.h,
                  right: 20.h,
                ),
                decoration: AppDecoration.fillOnPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL30,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 44.h,
                      width: double.maxFinite,
                      margin: EdgeInsets.only(
                        left: 72.h,
                        right: 60.h,
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
                    SizedBox(height: 98.h),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup94,
                      height: 74.h,
                      width: 94.h,
                    ),
                    SizedBox(height: 26.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 12.h),
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
                    ),
                    SizedBox(height: 26.h)
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
        left: 12.h,
        right: 22.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Continue to Google",
            style: CustomTextStyles.titleSmallBluegray400,
          ),
          SizedBox(height: 4.h),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: CustomTextFormField(
              controller: phoneNumberController,
              hintText: "Email or Phone Number",
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.emailAddress,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 12.h,
              ),
              borderDecoration: TextFormFieldStyleHelper.outlineTealTL14,
            ),
          )
        ],
      ),
    );
  }

  ///Navigates back to the previous screen
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}

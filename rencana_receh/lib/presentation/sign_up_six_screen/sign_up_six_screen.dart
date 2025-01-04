import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';

class SignUpSixScreen extends StatelessWidget {
  const SignUpSixScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.teal200,
      appBar: _buildAppbar(context),
      body: SafeArea(
        top: false,
        child: Container(
          height: 716.h,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 32.h,
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
                    Spacer(),
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
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(
                    top: 30.h,
                    right: 94.h,
                    bottom: 30.h,
                  ),
                  decoration: AppDecoration.outlineTeal.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL30,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Authorization",
                        style: CustomTextStyles.headlineSmallCyan800,
                      ),
                      SizedBox(height: 42.h),
                      CustomImageView(
                        imagePath: ImageConstant.imgIconTea1200,
                        height: 106.h,
                        width: 102.h,
                        margin: EdgeInsets.only(right: 36.h),
                      ),
                      SizedBox(height: 26.h),
                      Padding(
                        padding: EdgeInsets.only(right: 66.h),
                        child: Text(
                          "100%",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Scan Sucessfull!",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      SizedBox(height: 102.h)
                    ],
                  ),
                ),
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

  ///Navigates back to the previous screen
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}

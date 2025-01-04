import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../home_screen/home_screen.dart';
import '../sign_up_one_screen/sign_up_one_screen.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key})
      : super(
          key: key,
        );
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
              top: 10.h,
              bottom: 2.h,
            ),
            child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  left: 24.h,
                  top: 28.h,
                  right: 24.h,
                ),
                decoration: AppDecoration.fillOnPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL30,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Selamat Datang",
                      style: CustomTextStyles.headlineSmallCyan800,
                    ),
                    Text(
                      "Silahkan Login Terlebih Dahulu",
                      style: CustomTextStyles.labelLargeBluegray900,
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
                    SizedBox(height: 10.h),
                    CustomTextFormField(
                      controller: userNameController,
                      hintText: "Username",
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 12.h,
                      ),
                      borderDecoration: TextFormFieldStyleHelper.outlineTeal,
                      filled: true,
                      fillColor: theme.colorScheme.onPrimary,
                    ),
                    SizedBox(height: 6.h),
                    CustomTextFormField(
                      controller: passwordController,
                      hintText: "Password",
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
                      borderDecoration:
                          TextFormFieldStyleHelper.outlineTealTL14,
                    ),
                    SizedBox(height: 6.h),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 2.h),
                        child: Text(
                          "Forgot your password ?",
                          style: CustomTextStyles.labelLargeCyan800Medium,
                        ),
                      ),
                    ),
                    SizedBox(height: 4.h),
                    CustomElevatedButton(
                      text: "Sign in",
                      buttonTextStyle: CustomTextStyles.titleMediumCyan800,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                    ),
                    SizedBox(height: 14.h),
                    _buildRowlineoneone(context),
                    SizedBox(height: 16.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {},
                          constraints: BoxConstraints(
                            minHeight: 84.h,
                            minWidth: 84.h,
                          ),
                          padding: EdgeInsets.all(0),
                          icon: SizedBox(
                            width: 84.h,
                            height: 64.h,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGroup94,
                            ),
                          ),
                        ),
                        SizedBox(width: 16.h),
                        IconButton(
                          onPressed: () {},
                          constraints: BoxConstraints(
                            minHeight: 84.h,
                            minWidth: 84.h,
                          ),
                          padding: EdgeInsets.all(0),
                          icon: SizedBox(
                            width: 84.h,
                            height: 64.h,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGroup93,
                            ),
                          ),
                        ),
                        SizedBox(width: 16.h),
                        IconButton(
                          onPressed: () {},
                          constraints: BoxConstraints(
                            minHeight: 84.h,
                            minWidth: 84.h,
                          ),
                          padding: EdgeInsets.all(0),
                          icon: SizedBox(
                            width: 84.h,
                            height: 64.h,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgImage4,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 38.h),
                    CustomImageView(
                      imagePath: ImageConstant.imgFingerprint,
                      height: 64.h,
                      width: 66.h,
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: CustomTextStyles.bodySmallCyan800,
                        ),
                        SizedBox(width: 10.h),
                        InkWell(
                          onTap: () {
                            // Navigasi ke halaman SignUpOneScreen
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpOneScreen()),
                            );
                          },
                          child: Text(
                            "Sign Up",
                            style: CustomTextStyles.labelLargeBlack900,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h)
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
        text: "Sign in",
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowlineoneone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 4.h,
        right: 2.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Divider(
              color: appTheme.black900,
            ),
          ),
          SizedBox(width: 12.h),
          Text(
            "or sign up with",
            style: CustomTextStyles.labelLargeCyan800Medium,
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Divider(
              color: appTheme.black900,
            ),
          )
        ],
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}

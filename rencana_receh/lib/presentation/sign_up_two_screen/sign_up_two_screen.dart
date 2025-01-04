import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

//ignore_for_file: must_be_immutableclass
class SignUpTwoScreen extends StatelessWidget {
  SignUpTwoScreen({Key? key})
      : super(
          key: key,
        );
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordoneController = TextEditingController();
  bool checkmarkone = false;
  GlobalKey _formKey = GlobalKey<FormState>();
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
                    SizedBox(height: 68.h),
                    _buildEmail(context),
                    SizedBox(height: 20.h),
                    _buildPassword(context),
                    SizedBox(height: 20.h),
                    _buildPasswordone(context),
                    SizedBox(height: 18.h),
                    _buildCheckmarkone(context),
                    SizedBox(height: 28.h),
                    _buildSignuptwo(context),
                    SizedBox(height: 28.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Have an account?",
                          style: CustomTextStyles.bodySmallBluegray900,
                        ),
                        SizedBox(width: 12.h),
                        Text(
                          "Sign In",
                          style: CustomTextStyles.labelLargeCyan800,
                        )
                      ],
                    ),
                    SizedBox(height: 10.h)
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
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: CustomTextFormField(
        controller: emailController,
        hintText: "Baseness147@gmail.com",
        textInputType: TextInputType.emailAddress,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 12.h,
        ),
        borderDecoration: TextFormFieldStyleHelper.outlineTealTL14,
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: CustomTextFormField(
        controller: passwordController,
        hintText: "*************************",
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
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordone(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: CustomTextFormField(
        controller: passwordoneController,
        hintText: "******************",
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
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckmarkone(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 6.h),
        child: CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "By creating an account your aggree\nto our Term and Condtions",
          isExpandedText: true,
          value: checkmarkone,
          onChange: (value) {
            checkmarkone = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignuptwo(BuildContext context) {
    return CustomElevatedButton(
      text: "Sign up",
      margin: EdgeInsets.only(left: 6.h),
      buttonStyle: CustomButtonStyles.fillTeal,
      buttonTextStyle: CustomTextStyles.titleMediumBluegray100,
    );
  }

  ///Navigates back to the previous screen
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}

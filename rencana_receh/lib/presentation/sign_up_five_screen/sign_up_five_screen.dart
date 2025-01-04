import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpFiveScreen extends StatelessWidget {
  SignUpFiveScreen({Key? key})
      : super(
          key: key,
        );
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.teal200,
      appBar: _buildAppbar(context),
      body: SafeArea(
        top: false,
        child: SizedBox(
          height: SizeUtils.height,
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Container(
                  height: 716.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(
                          top: 8.h,
                          bottom: 4.h,
                        ),
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
                                    style:
                                        CustomTextStyles.headlineSmallCyan800,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      "Bersama Rencana Receh",
                                      style: CustomTextStyles
                                          .labelLargeBluegray900,
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
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 18.h),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                "R",
                                                style: CustomTextStyles
                                                    .poppinsCyan800,
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 22.h),
                                                  child: Text(
                                                    "R",
                                                    style: theme
                                                        .textTheme.displayLarge,
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
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 14.h),
                                child: Text(
                                  "Continue to Facebook",
                                  style: CustomTextStyles.titleSmallBluegray400,
                                ),
                              ),
                            ),
                            SizedBox(height: 18.h),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10.h,
                                right: 26.h,
                              ),
                              child: CustomTextFormField(
                                controller: phoneNumberController,
                                hintText: "Email or Phone Number",
                                textInputType: TextInputType.emailAddress,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10.h,
                                  vertical: 12.h,
                                ),
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineTealTL14,
                              ),
                            ),
                            SizedBox(height: 12.h),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 12.h,
                                right: 24.h,
                              ),
                              child: CustomTextFormField(
                                controller: passwordController,
                                hintText: "Password",
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                obscureText: true,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10.h,
                                  vertical: 12.h,
                                ),
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineTealTL14,
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              "Forget Account?",
                              style: CustomTextStyles.labelLargeCyan800,
                            ),
                            SizedBox(height: 10.h),
                            CustomElevatedButton(
                              text: "Next",
                              margin: EdgeInsets.only(left: 6.h),
                              buttonStyle: CustomButtonStyles.fillTeal,
                              buttonTextStyle:
                                  CustomTextStyles.titleMediumBluegray100,
                            ),
                            SizedBox(height: 26.h)
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(vertical: 16.h),
                          decoration: AppDecoration.outlineTeal.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL30,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage4,
                                height: 64.h,
                                width: 66.h,
                              ),
                              SizedBox(height: 158.h),
                              CustomImageView(
                                imagePath: ImageConstant.imgEyeOff,
                                height: 20.h,
                                width: 22.h,
                                alignment: Alignment.centerRight,
                              ),
                              SizedBox(height: 144.h)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  ///Section Widget
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
        text: "Sign Up",
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  ///Navigate back to the previous screen
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}

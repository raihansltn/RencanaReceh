import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';

class ChangePasswordTwoScreen extends StatelessWidget {
  const ChangePasswordTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onPrimary,
      appBar: _buildAppbar(context),
      body: SafeArea(
        top: false,
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 24.h,
            top: 32.h,
            right: 24.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 154.h,
                width: 130.h,
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
                            padding: EdgeInsets.symmetric(horizontal: 18.h),
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
                                    padding: EdgeInsets.only(bottom: 22.h),
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
              SizedBox(height: 70.h),
              Text(
                "Change Password Succesfully!",
                style: CustomTextStyles.titleMediumCyan800SemiBold,
              ),
              SizedBox(height: 24.h),
              Text(
                "You have succesfully change password. \n Please use the new password when Sign In.",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleSmall!.copyWith(
                  height: 1.50,
                ),
              ),
              SizedBox(height: 30.h),
              CustomElevatedButton(
                text: "OK",
                buttonStyle: CustomButtonStyles.fillTeal,
                buttonTextStyle: CustomTextStyles.titleMediumBluegray100,
              )
            ],
          ),
        ),
      ),
    );
  }

  ///Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgUser,
        margin: EdgeInsets.only(left: 24.h),
      ),
    );
  }
}

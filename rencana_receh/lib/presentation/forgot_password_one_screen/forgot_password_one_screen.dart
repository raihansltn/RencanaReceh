import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_phone_number.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordOneScreen extends StatelessWidget {
  ForgotPasswordOneScreen({Key? key})
      : super(
          key: key,
        );
  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('62');
  TextEditingController phoneNumberController = TextEditingController();
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
            children: [_buildCard(context)],
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
      padding: EdgeInsets.only(
        left: 16.h,
        top: 14.h,
        right: 16.h,
      ),
      decoration: AppDecoration.neutral6.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Type your phone number",
            style: CustomTextStyles.labelLargeBlack900,
          ),
          SizedBox(height: 12.h),
          SizedBox(
            width: double.maxFinite,
            child: CustomPhoneNumber(
              country: selectedCountry,
              controller: phoneNumberController,
              onTap: (Country value) {
                selectedCountry = value;
              },
            ),
          ),
          SizedBox(height: 22.h),
          Text(
            "Kami akan mengirimkan nomor verifikasi ke No Whatsapp Anda",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleSmall!.copyWith(
              height: 1.50,
            ),
          ),
          SizedBox(height: 22.h),
          CustomElevatedButton(
            text: "Send",
            buttonTextStyle: CustomTextStyles.titleMediumCyan800,
          )
        ],
      ),
    );
  }
}

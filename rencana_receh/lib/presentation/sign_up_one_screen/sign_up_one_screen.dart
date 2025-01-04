import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'package:rencana_receh/database/database_helper_user.dart'; // Import DatabaseHelper
import 'package:rencana_receh/models/users_model.dart'; // Import model

// ignore_for_file: must_be_immutable
class SignUpOneScreen extends StatefulWidget {
  SignUpOneScreen({Key? key})
      : super(
          key: key,
        );
  @override
  _SignUpOneScreenState createState() => _SignUpOneScreenState();
}

class _SignUpOneScreenState extends State<SignUpOneScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordoneController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  bool rectangledissab = false;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Create an instance of DatabaseHelper
  final DatabaseHelperUser _databaseHelper = DatabaseHelperUser();

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
                  left: 24.h,
                  top: 32.h,
                  right: 24.h,
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
                        left: 68.h,
                        right: 58.h,
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
                    SizedBox(height: 72.h),
                    _buildUserName(context),
                    SizedBox(height: 20.h),
                    _buildPassword(context),
                    SizedBox(height: 20.h),
                    _buildPasswordone(context),
                    SizedBox(height: 20.h),
                    _buildPhoneNumberField(
                        context), // Menambahkan widget untuk nomor telepon
                    SizedBox(height: 18.h),
                    _buildRectangledissab(context),
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
                          style: CustomTextStyles.labelLargePrimary,
                        )
                      ],
                    ),
                    SizedBox(height: 6.h)
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
  Widget _buildUserName(BuildContext context) {
    return CustomTextFormField(
      controller: userNameController,
      
      hintText: "Insert Username",
      contentPadding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 12.h,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlineTealTL14,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter a username";
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      hintText: "Choose a Password",
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
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter a password";
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildPasswordone(BuildContext context) {
    return CustomTextFormField(
      controller: passwordoneController,
      hintText: "Confirm your Password",
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
      validator: (value) {
        if (value != passwordController.text) {
          return "Passwords do not match";
        }
        return null;
      },
    );
  }

  Widget _buildPhoneNumberField(BuildContext context) {
    return CustomTextFormField(
      controller: phoneNumberController,
      hintText: "Enter Phone Number",
      contentPadding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 12.h,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlineTealTL14,
    );
  }

  /// Section Widget
  Widget _buildRectangledissab(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: CustomCheckboxButton(
        alignment: Alignment.centerLeft,
        text: "By creating an account your agree\nto our Term and Conditions",
        isExpandedText: true,
        value: rectangledissab,
        onChange: (value) {
          setState(() {
            rectangledissab = value; // Update the value and rebuild the widget
          });
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSignuptwo(BuildContext context) {
    return CustomElevatedButton(
      text: "Sign Up",
      buttonTextStyle: CustomTextStyles.titleMediumCyan800,
      onPressed: () async {
        _handleSignUp(context); // Panggil metode sign-up
      },
    );
  }

  void _handleSignUp(BuildContext context) async {
    if (_formKey.currentState?.validate() ?? false) {
      if (!rectangledissab) {
        // Jika checkbox belum dicentang
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("You must agree to the terms and conditions")),
        );
        return;
      }

      // Buat objek User
      User newUser = User(
        username: userNameController.text,
        password: passwordController.text,
        phoneNumber: phoneNumberController
            .text, // Ganti dengan phoneNumberController.text jika ada field Phone Number
      );

      // Simpan ke database
      int result = await DatabaseHelperUser.instance.insertUser(newUser);

      if (result > 0) {
        // Berhasil
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Sign-Up Successful")),
        );
        Navigator.pop(context); // Kembali ke halaman sebelumnya
      } else {
        // Gagal
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed to Sign Up")),
        );
      }
    }
  }

  /// Navigates back to the previous screen
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}


import 'package:flutter/material.dart'; 
import '../../core/app_export.dart';
import './../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart'; 
import '../../widgets/app_bar/appbar_title.dart'; 
import '../../widgets/app_bar/custom_app_bar.dart'; 
import '../../widgets/custom_elevated_button.dart'; 
import '../../widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class ChangePasswordOneScreen extends StatelessWidget { ChangePasswordOneScreen ({Key? key})
: super(
);
key: key,
TextEditingController newpasswordController = TextEditingController();
TextEditingController confirmpasswordController = TextEditingController();
GlobalKey<FormState> _formKey = GlobalKey<FormState>();
@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: theme.colorScheme.onPrimary, resizeToAvoidBottomInset: false,
appBar: _buildAppbar(context),
body: SafeArea(
top: false,
child: Form(

key: _formkey, child: Container(
width: double.maxFinite,
padding: EdgeInsets.only(
),
left: 24.h,
top: 6.h,
right: 24.h,
child: Column(
mainAxisSize: MainAxisSize.max,
children: [_buildCard(context)],
),
),
),
}
);
),
/// Section Widget
PreferredSizeWidget _buildAppbar (BuildContext context) {
return CustomAppBar(
leadingWidth: 40.h,
leading: AppbarLeading Image(
),
imagePath: ImageConstant.imgUser,
margin: EdgeInsets.only(left: 24.h),
title: AppbarTitle(
text: "Change password",
margin: EdgeInsets.only(left: 16.h),
);
),

}
/// Section Widget
Widget _buildCard (BuildContext context) { return Container(
width: double.maxFinite,
padding: EdgeInsets.only(
),
left: 14.h, top: 14.h,
right: 14.h,
decoration: AppDecoration.neutral6.copyWith( borderRadius: BorderRadiusStyle.roundedBorder14,
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
),
"Type your new password",
style: CustomTextStyles.labelLargeBlack900,
SizedBox(height: 4.h),
CustomTextFormField(
controller: newpasswordController,
hintText:
textInputType: TextInputType.visiblePassword,




);
}
}
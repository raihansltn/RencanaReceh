
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs; 
import '../core/app_export.dart';
class AppDecoration {
// Card decorations
static BoxDecoration get card2 => BoxDecoration(
color: theme.colorScheme.onPrimary,
boxShadow: [
BoxShadow(
color: appTheme.black900.withOpacity(0.05),
spreadRadius: 2.h,
blurRadius: 2.h,
offset: Offset(
0,
5,
),
>
);
],
// Fill decorations
static BoxDecoration get fillDeepOrange => BoxDecoration( color: appTheme.deepOrange100,
);
static BoxDecoration get fillOnPrimary => BoxDecoration( color: theme.colorScheme.onPrimary,
);
static BoxDecoration get fillTeal => BoxDecoration(
);
color: appTheme.teal200,
// Neutral decorations

static BoxDecoration get neutral6 => BoxDecoration( color: theme.colorScheme.onPrimary,
boxShadow: [
BoxShadow(
color: theme.colorScheme.secondaryContainer,
spreadRadius: 2.h,
blurRadius: 2.h,
offset: Offset(
0,
4,
),
);
],
>
// Outline decorations
static BoxDecoration get outlineTeal => BoxDecoration(
border: Border.all(
color: appTheme.teal200,
width: 1.h,
),
);
// Column decorations
static BoxDecoration get column5 => BoxDecoration(
image: DecorationImage(
image: fs.Svg(
),
ImageConstant.imgGroup268,
fit: BoxFit.fill,
),
);
}

class BorderRadiusStyle {
// Circle borders
static BorderRadius get circleBorder18 => BorderRadius.circular(
18.h, );
// Custom borders
static BorderRadius get customBorderTL30 => BorderRadius.vertical( top: Radius.circular(30.h),
);
// Rounded borders
static BorderRadius get roundedBorder14 => BorderRadius.circular(
14.h, );
static BorderRadius get roundedBorder8 => BorderRadius.circular(
8.h, );
}
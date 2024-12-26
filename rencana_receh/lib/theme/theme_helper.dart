import 'package:flutter/material.dart';
import '../core/app_export.dart';

String _appTheme = "lightCode";
LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

//helper class for managing themes and colors
//ignore_for_file : must_be_immutable
class ThemeHelper {
  //a map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

  //a map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  //changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  //returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  //returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.gray100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.h),
          ),
          elevation: 0,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colorScheme.primary;
          }
          return Colors.transparent;
        }),
        side: BorderSide(
          color: appTheme.gray400,
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray20001,
      ),
    );
  }

  //returns the lightCode colors for the currents theme.
  LightCodeColors themeColor() => _getThemeColors();

  //returns the currents theme data
  ThemeData themeData() => _getThemeData();
}

//class containing the supported text theme syles
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodySmall: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        displayLarge: TextStyle(
          color: appTheme.cyan800,
          fontSize: 64.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 24.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray500,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 11.fSize,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w900,
        ),
        titleLarge: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 20.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF3629B6),
    secondaryContainer: Color(0X113629B7),
    onPrimary: Color(0XFFFFFFFF),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
// Black
  Color get black900 => Color(0XFF000000);
// BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray400 => Color(0XFF898989);

  Color get blueGray900 => Color(0XFF333333);
  Color get blueGray90007 => Color(0XFF2B2B2B); // Cyan
  Color get cyan800 => Color(0XFF016B83); // DeepOrange
  Color get deepOrange100 => Color(0XFFFFCCB9); // Gray
  Color get gray100 => Color(0XFFF1F1F8);
  Color get gray20001 => Color(0XFFEBEBEB);
  Color get gray400 => Color(0XFFBFBFBF);
  Color get gray40001 => Color(0XFFC9C9C9);
  Color get gray40003 => Color(0XFFCACACA);
  Color get gray500 => Color(0XFF979797); // Indigo
  Color get indigo20001 => Color(0XFFA8A3D7);
  Color get indigo500 => Color(0XFF5655B9); // LightBlue
  Color get lightBlueA700 => Color(0XFF0890FE);
  Color get lightBlueA70001 => Color(0XFF007AFF); // Orange
  Color get orange400 => Color(0XFFFFAF2A); // Pink
  Color get pinkA200 => Color(0XFFFF4267); // Teal
  Color get teal200 => Color(0XFF6EB4C0);
  Color get teal300 => Color(0XFF52D5BA); // Yellow

  Color get yellow900 => Color(0XFFFB6B18);
}

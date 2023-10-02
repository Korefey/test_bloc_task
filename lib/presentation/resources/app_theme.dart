import 'package:flutter/material.dart';
import 'package:test_bloc_task/generated/assets/colors.gen.dart';
import 'package:test_bloc_task/generated/assets/fonts.gen.dart';
import 'package:test_bloc_task/presentation/resources/app_constants.dart';

ThemeData getAppTheme() => ThemeData(
      primaryColor: ColorName.text,
      scaffoldBackgroundColor: ColorName.white,
      useMaterial3: true,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontFamily: FontFamily.nunito,
          fontSize: 30,
          fontWeight: FontWeight.w900,
          height: 1,
        ),
        titleLarge: TextStyle(
          fontFamily: FontFamily.nunito,
          fontSize: 25,
          fontWeight: FontWeight.w700,
          height: 1,
        ),
        titleMedium: TextStyle(
          fontFamily: FontFamily.nunito,
          fontSize: 20,
          fontWeight: FontWeight.w400,
          height: 1,
        ),
      ).apply(
        bodyColor: ColorName.text,
        displayColor: ColorName.text,
      ),
      elevatedButtonTheme: _buildElevatedButtonThemeData(),
      textButtonTheme: _buildTextButtonThemeData(),
      // checkboxTheme: _buildCheckboxThemeData(),
      splashFactory: InkSparkle.splashFactory,
    );

ElevatedButtonThemeData _buildElevatedButtonThemeData() {
  Color getButtonBackgroundColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.contains(MaterialState.disabled)) {
      return ColorName.redDisabled;
    } else if (states.any(interactiveStates.contains)) {
      return ColorName.redActive;
    }

    return ColorName.redPrimary;
  }

  Color getButtonForegroundColor(Set<MaterialState> states) => ColorName.white;

  OutlinedBorder getShape() => const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppConstants.homeButtonRadius)),
      );

  TextStyle getTextStyle() => const TextStyle(
        fontFamily: FontFamily.nunito,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 1.3,
      );

  return ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith(getButtonBackgroundColor),
      foregroundColor: MaterialStateProperty.resolveWith(getButtonForegroundColor),
      shape: MaterialStateProperty.all(getShape()),
      fixedSize:
          MaterialStateProperty.all(const Size(double.infinity, AppConstants.homeButtonHeight)),
      elevation: MaterialStateProperty.all(0),
      padding: MaterialStateProperty.all(const EdgeInsets.only(left: 12, right: 17)),
      textStyle: MaterialStateProperty.all(getTextStyle()),
    ),
  );
}

TextButtonThemeData _buildTextButtonThemeData() {
  OutlinedBorder getShape(Set<MaterialState> states) => const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      );

  TextStyle getButtonTextStyle(Set<MaterialState> states) =>
      const TextStyle(fontSize: 16, height: 1.3, color: ColorName.redPrimary);

  Color getButtonForegroundColor(Set<MaterialState> states) => ColorName.redPrimary;

  Color getButtonBackgroundColor(Set<MaterialState> states) => Colors.transparent;

  Color getButtonOverlayColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
    };
    if (states.any(interactiveStates.contains)) {
      return ColorName.redLight;
    }
    return Colors.transparent;
  }

  EdgeInsets getButtonPadding(Set<MaterialState> states) =>
      const EdgeInsets.symmetric(horizontal: 0);

  return TextButtonThemeData(
    style: ButtonStyle(
      splashFactory: InkSparkle.splashFactory,
      shape: MaterialStateProperty.resolveWith(getShape),
      padding: MaterialStateProperty.resolveWith(getButtonPadding),
      textStyle: MaterialStateProperty.resolveWith(getButtonTextStyle),
      foregroundColor: MaterialStateProperty.resolveWith(getButtonForegroundColor),
      backgroundColor: MaterialStateProperty.resolveWith(getButtonBackgroundColor),
      overlayColor: MaterialStateProperty.resolveWith(getButtonOverlayColor),
    ),
  );
}

const interactiveStates = <MaterialState>{
  MaterialState.pressed,
  MaterialState.hovered,
  MaterialState.focused,
};

MaterialStateProperty<Color> get lightElevatedButtonOverlayColor =>
    MaterialStateProperty.resolveWith((states) {
      if (states.any(interactiveStates.contains)) {
        return ColorName.redActive.withOpacity(0.6);
      } else if (states.contains(MaterialState.disabled)) {
        return ColorName.greyBackground;
      }
      return ColorName.greyBackground;
    });

Color getLightElevatedButtonBackgroundColor(Set<MaterialState> states) {
  if (states.any(interactiveStates.contains)) {
    return ColorName.redLight;
  } else if (states.contains(MaterialState.disabled)) {
    return ColorName.redLight;
  }
  return ColorName.redLight;
}

Color getLightElevatedButtonForegroundColor(Set<MaterialState> states) {
  if (states.any(interactiveStates.contains)) {
    return ColorName.greyText;
  } else if (states.contains(MaterialState.disabled)) {
    return ColorName.redPrimary;
  }
  return ColorName.greyText;
}

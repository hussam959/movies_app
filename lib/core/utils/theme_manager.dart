import 'package:flutter/material.dart';
import '../../core/utils/color_manager.dart';
import '../../core/utils/font_manager.dart';
import '../../core/utils/style_manager.dart';
import '../../core/utils/values_manager.dart';

ThemeData getAppTheme() {
  return ThemeData(

    ///main colors
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.lightPrimary,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.grey1,

      ///ripple effect(on long press)
      splashColor: Colors.transparent,

      ///card theme
      cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: AppSize.s4,
      ),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showUnselectedLabels: false,
        elevation: 20.0,
        unselectedItemColor: ColorManager.white,
        backgroundColor: ColorManager.grey2,
        selectedItemColor: ColorManager.primary,
        type: BottomNavigationBarType.fixed,
      ),

      ///appBar theme
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        elevation: AppSize.s0,
        shadowColor: ColorManager.lightPrimary,
        iconTheme: IconThemeData(
          color: ColorManager.white,
        ),
        titleTextStyle:
        getRegularStyle(color: ColorManager.white, fontSize: AppSize.s16),
      ),

      ///button theme
      buttonTheme: ButtonThemeData(
          shape: const StadiumBorder(),
          disabledColor: ColorManager.grey,
          buttonColor: ColorManager.primary,
          splashColor: ColorManager.lightPrimary),

      ///elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: getRegularStyle(
                color: ColorManager.white,
                fontSize: AppSize.s17,
              ),
              backgroundColor: ColorManager.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s12),
              ))),

      //text theme
      textTheme: TextTheme(
        displayLarge: getSemiBoldStyle(
            color: ColorManager.white, fontSize: AppSize.s16),
        headlineLarge:
        getBoldStyle(color: ColorManager.white, fontSize: AppSize.s12),
        headlineMedium: getSemiBoldStyle(
            color: ColorManager.white, fontSize: AppSize.s16),
        titleMedium:
        getMediumStyle(color: ColorManager.white, fontSize: AppSize.s12),
        labelMedium:
        getBoldStyle(color: ColorManager.white, fontSize: AppSize.s18),
        titleSmall:
        getRegularStyle(color: ColorManager.white, fontSize: AppSize.s16),
        bodyMedium:
        getRegularStyle(color: ColorManager.white, fontSize: FontSize.s12),
        bodyLarge:
        getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16),
        bodySmall:
        getRegularStyle(color: ColorManager.white, fontSize: FontSize.s14),
      ),

      //input decoration theme
      inputDecorationTheme: InputDecorationTheme(

        /// content padding
        contentPadding: const EdgeInsets.all(AppPadding.p8),

        /// hint style
        hintStyle:
        getRegularStyle(color: ColorManager.grey, fontSize: AppSize.s14),

        ///label style
        labelStyle:
        getMediumStyle(color: ColorManager.white, fontSize: AppSize.s14),

        /// error style
        errorStyle: getRegularStyle(color: ColorManager.error),

        /// enabled border style
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.white, width: AppSize.s2),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        ),

        /// focused border style
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.white, width: AppSize.s2),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        ),

        /// error border style
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.white, width: AppSize.s2),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        ),

        /// focused error border style
        focusedErrorBorder: OutlineInputBorder(
          borderSide:
          BorderSide(color: ColorManager.primary, width: AppSize.s2),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        ),
      ));
}

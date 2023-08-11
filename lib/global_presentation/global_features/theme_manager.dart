import '../../app/constants/exports.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors of the app
    primaryColor: ColorManager.primary,
    //useMaterial3: true,
    primaryColorLight: ColorManager.primaryOpacity70,
    disabledColor: ColorManager.grey,
    scaffoldBackgroundColor: ColorManager.white,
    iconTheme: IconThemeData(color: ColorManager.fontColor, size: 20.h),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.light,
    dividerColor: Colors.transparent,
    unselectedWidgetColor: ColorManager.grey,
    platform: TargetPlatform.iOS,

    // App bar theme
    appBarTheme: AppBarTheme(
      color: ColorManager.white,
      iconTheme: IconThemeData(color: ColorManager.primary),
      elevation: 0,
      toolbarHeight: 70.h,
      centerTitle: true,
    ),
  );
}

ThemeData getDarkTheme() {
  return ThemeData(
    // main colors of the app
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    disabledColor: ColorManager.grey,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: ColorManager.scaffoldDarkColor,
    iconTheme: IconThemeData(color: ColorManager.white, size: 20.h),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    hintColor: ColorManager.grey6,
    unselectedWidgetColor: ColorManager.grey,
    // App bar theme
    appBarTheme: AppBarTheme(
      color: ColorManager.scaffoldDarkColor,
      iconTheme: IconThemeData(color: ColorManager.white),
      elevation: 0,
      centerTitle: true,
    ),
  );
}

bool isDarkMoodEnabled() {
  return Get.isDarkMode;
  // return CacheController.instance.isDarkMode();
}

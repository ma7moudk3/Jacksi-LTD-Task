import 'app/constants/exports.dart';
import 'app/routes/app_pages.dart';
import 'generated/locales.g.dart';
import 'global_presentation/global_features/theme_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: "Jacksi Task",
          initialRoute: AppPages.INITIAL,
          debugShowCheckedModeBanner: false,
          getPages: AppPages.routes,
          locale: const Locale("ar"),
          translationsKeys: AppTranslation.translations,
          theme: getApplicationTheme(),
        );
      },
    ),
  );
}

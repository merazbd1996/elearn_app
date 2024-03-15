import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_learning_app/routes/route_destinations.dart';
import 'package:e_learning_app/routes/route_names.dart';
import 'package:e_learning_app/utils/config.dart';
import 'package:e_learning_app/utils/languages.dart';
import 'package:e_learning_app/utils/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConfig.appName,

      // Themes
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.light,

      // Localizations
      translations: Languages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),

      // Routes
      getPages: RouteDestinations.pages,
      initialRoute: RouteNames.splash,
            // initialRoute: RouteNames.splash,
    );
  }
}

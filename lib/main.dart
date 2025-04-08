import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widgets_app/config/navigation/navigation.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widgets App',

      // Rutas
      initialRoute: Navigation.home,
      getPages: Navigation.getRoutes(),
      navigatorKey: Get.key,

      // Tema
      theme: AppTheme.theme(),

      // Idiomas
    );
  }
}

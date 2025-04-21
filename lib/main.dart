import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:widgets_app/config/navigation/navigation.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/config/theme/provider/theme_provider.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp()
    )
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final AppTheme appTheme = ref.watch( themeNotifierProvider );


    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widgets App',

      // Rutas
      initialRoute: Navigation.home,
      getPages: Navigation.getRoutes(),
      navigatorKey: Get.key,

      // Tema
      theme: appTheme.theme()

      // Idiomas
    );
  }
}

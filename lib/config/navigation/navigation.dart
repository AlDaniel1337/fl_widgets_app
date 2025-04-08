import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/pages/pages.dart';
import 'package:get/get.dart';

/// Navegacion
class Navigation{

  // Ruta principal
  static const String home = HomePage.route;
  
  /// Listado con las rutas de la app
  static List<GetPage> getRoutes(){    
    List<GetPage> pages = [
      GetPage(name: AnimatedPage.route,       page:() => const AnimatedPage()),
      GetPage(name: AppTutorialPage.route,    page:() => const AppTutorialPage()),
      GetPage(name: ButtonsPage.route,        page:() => const ButtonsPage()),
      GetPage(name: CardsPage.route,          page:() => const CardsPage()),
      GetPage(name: HomePage.route,           page:() => const HomePage()),
      GetPage(name: InfiniteScrollPage.route, page:() => const InfiniteScrollPage()),
      GetPage(name: ProgressPage.route,       page:() => const ProgressPage()),
      GetPage(name: SnackbarPage.route,       page:() => const SnackbarPage()),
      GetPage(name: UiControlsPage.route,     page:() => const UiControlsPage()),
    ];    
    return pages;
  } 


  //+ ==========[ NAVEGACIÓN ]========== +\\
  /// Moverse a otra pantalla dejando la anterior en el historial
  static goToPage({required String page}) => Get.toNamed(page);

  /// Cerrar y regresar a la página anterior
  static goBackToPage({required BuildContext context}) => Navigator.of(context).pop(true);

  /// Salir de snackbars, dialogs, bottomsheets 
  static goBack() => Get.back();

}
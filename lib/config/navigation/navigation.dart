import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/pages/pages.dart';
import 'package:get/get.dart';

/// Navegacion
class Routes{

  // Ruta principal
  static const String home = HomePage.route;
  
  /// Listado con las rutas de la app
  static List<GetPage> getRoutes(){    
    List<GetPage> pages = [
      GetPage(name: HomePage.route,    page:() => const HomePage()),
      GetPage(name: ButtonsPage.route, page:() => const ButtonsPage()),
      GetPage(name: CardsPage.route,   page:() => const CardsPage()),
    ];
    
    return pages;
  } 

    //^ ==========[ NAVEGACIÓN ]========== ^\\
  
  /// Moverse a otra pantalla dejando la anterior en el historial
  static goToPage({required String page}) => Get.toNamed(page);

  /// Cerrar y regresar a la página anterior
  static goBackToPage({required BuildContext context}) => Navigator.of(context).pop(true);

}
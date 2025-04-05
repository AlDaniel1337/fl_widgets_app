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
}
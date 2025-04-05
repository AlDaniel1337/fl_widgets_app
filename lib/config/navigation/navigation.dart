import 'package:widgets_app/presentation/pages/home/home_page.dart';
import 'package:get/get.dart';

/// Navegacion
class Routes{

  // Ruta principal
  static const String home = HomePage.route;
  
  /// Listado con las rutas de la app
  static List<GetPage> getRoutes(){    
    List<GetPage> pages = [
      GetPage(name: HomePage.route, page:() => const HomePage()),
    ];
    
    return pages;
  } 
}
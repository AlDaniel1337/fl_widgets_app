import 'package:flutter/material.dart';

/// Colores disponibles
enum ColorsTheme {
  blue   (color: Colors.blue,),
  green  (color: Colors.green,),
  red    (color: Colors.red,),
  yellow (color: Colors.yellow,),
  orange (color: Colors.orange,),
  pink   (color: Colors.pink,),
  teal   (color: Colors.teal,),
  custonPurple(color: Color(0xFF49149F) ),
  customRed   (color: Color.fromARGB(255, 158, 13, 13) );

  const ColorsTheme({ 
    required Color color 
  }) : _color = color;

  final Color _color;
  Color get bgColor => _color;
}


class AppTheme{

  final ColorsTheme themeColor;
  final bool isDarkMode;

  AppTheme({
    this.themeColor = ColorsTheme.blue, 
    this.isDarkMode = false
  });

  ///  Tema principal de la aplicación
  ///+ [themeColor]: Color base que utilizara la aplicación para definir el tema
  ThemeData theme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: themeColor.bgColor,
    brightness: isDarkMode ? Brightness.dark : Brightness.light,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
    )
  );


  AppTheme copyWith({
    ColorsTheme? themeColor,
    bool? isDarkMode,
  }) => AppTheme(
    isDarkMode: isDarkMode ?? this.isDarkMode,
    themeColor: themeColor ?? this.themeColor,
  );


  //*==========[ COLORES DEL TEMA ]==========*\

  ///  Obtener el color primario
  ///+ [context]: Contexto de la aplicación
  static getPrimaryColor( BuildContext context ) => Theme.of(context).colorScheme.primary;
  
  ///  Obtener el color secundario
  ///+ [context]: Contexto de la aplicación
  static getSecondaryColor( BuildContext context ) => Theme.of(context).colorScheme.secondary;

}
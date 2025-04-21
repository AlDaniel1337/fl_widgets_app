import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider( (ref) => false );
final selectedColorProvider = StateProvider( (ref) => 0 );

// Custom AppTheme
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>( 
  (ref) => ThemeNotifier()
);

//? Mantener un estado particular
class ThemeNotifier extends StateNotifier<AppTheme> {

  // Estado inicial
  ThemeNotifier(): super (
    AppTheme() //? Crear primera instancia del AppTheme
  );

  //&==========[ FUNCIONES ]==========&\\
  void toggleDarkMode(){
    state = state.copyWith( isDarkMode: !state.isDarkMode );
  }

  void changeSelectedColorIndex( int colorIndex ){    
    state = state.copyWith(
      themeColor: ColorsTheme.values[colorIndex]
    );
  }

}
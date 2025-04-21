import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/config/theme/provider/theme_provider.dart';

class ThemePage extends ConsumerWidget {

  static const String route = "/theme";
   
  const ThemePage({super.key});
  
  @override
  Widget build(BuildContext context,  WidgetRef ref) {

    final isDarkMode = ref.watch( themeNotifierProvider ).isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: const Text('ThemePage'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: IconButton(
              onPressed: () {
                ref.read( themeNotifierProvider.notifier )
                   .toggleDarkMode();
              }, 
              icon: Icon( (isDarkMode)
                ? Icons.dark_mode_outlined 
                : Icons.light_mode_outlined
              )
            ),
          )
        ],
      ),
   
      body: Center(
        child:ListView.builder(
          itemCount: ColorsTheme.values.length,
          itemBuilder: (context, index) {
            return RadioListTile(

              title: Text(
                ColorsTheme.values[index].name.toString(), 
                style: TextStyle( color: ColorsTheme.values[index].bgColor ),
              ),
              activeColor: ColorsTheme.values[index].bgColor,

              value: ColorsTheme.values[index], 
              groupValue: ColorsTheme.values, 
              onChanged: (value){ 
                ref.read( themeNotifierProvider.notifier )
                   .changeSelectedColorIndex(index);
              }
            );
          },
        ),
      ),
    );
  }
}

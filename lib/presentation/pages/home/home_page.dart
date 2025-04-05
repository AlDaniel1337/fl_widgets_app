import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/menu/menu_item.dart';

class HomePage extends StatelessWidget {

  static const String route = "/";
   
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
        title: const Text('Flutter + Materia 3'),
      ),
   
      body: const Center(
        child: MainMenu(),
      ),
    );
  }
}
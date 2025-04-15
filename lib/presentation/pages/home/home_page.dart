import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/menu/menu.dart';
import 'package:widgets_app/presentation/widgets/side_menu/side_menu.dart';

class HomePage extends StatelessWidget {

  static const String route = "/";
   
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {

    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
   
      appBar: AppBar(
        title: const Text('Flutter + Materia 3'),
      ),
   
      body: const Center(
        child: MainMenu(),
      ),

      drawer: SideMenu( scaffoldKey: scaffoldKey, ),
    );
  }
}
import 'package:flutter/material.dart';

class AppTutorialPage extends StatelessWidget {

  static const String route = "/tutorial";
   
  const AppTutorialPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
         title: const Text('AppTutorialPage'),
         centerTitle: true,
      ),
   
      body: const Center(
         child: Text('AppTutorialPage'),
      ),
    );
  }
}
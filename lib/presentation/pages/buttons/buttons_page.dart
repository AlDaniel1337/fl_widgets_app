import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {

  static const String route = "/buttons";
   
  const ButtonsPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
         title: const Text('ButtonsPage'),
         centerTitle: true,
      ),
   
      body: const Center(
         child: Text('ButtonsPage'),
      ),
    );
  }
}
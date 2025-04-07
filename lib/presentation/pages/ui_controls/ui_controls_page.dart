import 'package:flutter/material.dart';

class UiControlsPage extends StatelessWidget {

  static const String route = "/ui_controls";
   
  const UiControlsPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
         title: const Text('UiControlsPage'),
         centerTitle: true,
      ),
   
      body: const Center(
         child: Text('UiControlsPage'),
      ),
    );
  }
}
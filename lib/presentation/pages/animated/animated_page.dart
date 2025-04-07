import 'package:flutter/material.dart';

class AnimatedPage extends StatelessWidget {

  static const String route = "/animated";
   
  const AnimatedPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
         title: const Text('AnimatedPage'),
         centerTitle: true,
      ),
   
      body: const Center(
         child: Text('AnimatedPage'),
      ),
    );
  }
}
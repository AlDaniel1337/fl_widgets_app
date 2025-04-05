import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {

  static const String route = "/cards";
   
  const CardsPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
         title: const Text('CardsPage'),
         centerTitle: true,
      ),
   
      body: const Center(
         child: Text('CardsPage'),
      ),
    );
  }
}
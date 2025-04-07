import 'package:flutter/material.dart';

class InfiniteScrollPage extends StatelessWidget {

  static const String route = "/infinite_scroll";
   
  const InfiniteScrollPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
         title: const Text('InfiniteScrollPage'),
         centerTitle: true,
      ),
   
      body: const Center(
         child: Text('InfiniteScrollPage'),
      ),
    );
  }
}
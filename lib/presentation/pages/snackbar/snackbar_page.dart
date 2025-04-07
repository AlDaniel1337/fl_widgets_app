import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {

  static const String route = "/snackbar";
   
  const SnackbarPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
         title: const Text('SnackbarPage'),
         centerTitle: true,
      ),
   
      body: const Center(
         child: Text('SnackbarPage'),
      ),
    );
  }
}
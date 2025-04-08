import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/pages/progress/components/circular_progress_view.dart';

class ProgressPage extends StatelessWidget {

  static const String route = "/progress";
   
  const ProgressPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
         title: const Text('ProgressPage'),
         centerTitle: true,
      ),
   
      body: const Center(
         child: CircularProgressView()
      ),
    );
  }
}
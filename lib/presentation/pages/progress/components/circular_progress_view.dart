import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/pages/progress/components/controlled_progress.dart';
import 'package:widgets_app/presentation/pages/progress/components/uncontrolled_progress.dart';

class CircularProgressView extends StatelessWidget {
   
  const CircularProgressView({super.key});
  
  @override
  Widget build(BuildContext context) {    
    return Column(
      children: [
        UncontrolledProgress(),
        ControlledProgress(),
      ],
    );
  }
}
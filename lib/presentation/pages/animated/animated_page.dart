import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widgets_app/presentation/pages/animated/components/animations_example.dart';
import 'package:widgets_app/presentation/pages/animated/controller/animated_page_controller.dart';

class AnimatedPage extends StatelessWidget {

  static const String route = "/animated";
   
  const AnimatedPage({super.key});
  
  @override
  Widget build(BuildContext context) {

    AnimatedPageController animatedPageController = Get.put(AnimatedPageController());

    return Scaffold(
   
      appBar: AppBar(
        title: const Text('Contenedor Animado'),
      ),
   
      body: Center(
        child: AnimationsExample(),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => animatedPageController.changeShape(),
        child: const Icon( Icons.play_arrow_rounded ),
      ),
    );
  }
}
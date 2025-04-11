import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widgets_app/config/navigation/navigation.dart';
import 'package:widgets_app/config/plugins/animations.dart';
import 'package:widgets_app/presentation/pages/app_tutorial/components/slides/slides_view.dart';
import 'package:widgets_app/presentation/pages/app_tutorial/controller/app_tutorial_controller.dart';

class AppTutorialPage extends StatelessWidget {

  static const String route = "/tutorial";
   
  const AppTutorialPage({super.key});
  
  @override
  Widget build(BuildContext context) {

    AppTutorialController appTutorialController = Get.put(AppTutorialController());

    return Scaffold(   
      body: Stack(
        children: [

          SlidesView(),

          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              onPressed: () => Navigation.goBack(), 
              child: const Text("Salir")
            )
          ),

          
          Obx( () => Positioned(
            bottom: 30,
            right: 30,
            child: appTutorialController.silidersEndReached
            ? Animations.fadeInRightAnimation( FilledButton(
                onPressed: () => Navigation.goBack(), 
                child: const Text("Comenzar")
              )
            )
            : SizedBox(),
          ))
          
        ],
      ),
    );
  }
}


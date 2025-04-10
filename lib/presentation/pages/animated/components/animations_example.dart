import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widgets_app/presentation/pages/animated/controller/animated_page_controller.dart';

class AnimationsExample extends StatelessWidget {
   
  const AnimationsExample({super.key});
  
  @override
  Widget build(BuildContext context) {
    AnimatedPageController animatedPageController = Get.put(AnimatedPageController());

    return Center(
      child: Wrap(
        children: [
    
          ...animatedPageController.curves.map( (curve) => 
            Obx( () => Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 70,
                width: 70,

                child: UnconstrainedBox(
                  child: AnimatedContainer(
                    duration: Duration( milliseconds: 1000 ),
                    width:  animatedPageController.listContainerWidth,
                    height: animatedPageController.listContainerHeight,
                    curve: curve,
                    decoration: BoxDecoration(
                      color: animatedPageController.color,
                      borderRadius: BorderRadius.circular( animatedPageController.borderRadius )
                    ),
                  ),
                ),

              ),
            )),
        )
    
        ],
      ),
    );
  }
}
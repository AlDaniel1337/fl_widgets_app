import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math';

/// AnimatedPageController _animatedPageController = Get.put(AnimatedPageController());

class AnimatedPageController extends GetxController{

  final _borderRadius = 10.0.obs;
  get borderRadius => _borderRadius.value;
  
  final _color = const Color.fromARGB(255, 68, 83, 170).obs;
  get color => _color.value;

  final _listContainerWidth = 60.0.obs;
  get listContainerWidth => _listContainerWidth.value;

  final _listContainerHeight = 60.0.obs;
  get listContainerHeight => _listContainerHeight.value;



  /// Cambiar el [color], [width], [height] y [borderRadius] de forma aleatoria
  void changeShape(){

    final random = Random();

    var listContainerWidthHeightValue = random.nextInt(20) + 40.0;
    var borderRadiusValue = random.nextInt(60) + 5.0;

    _borderRadius.value = borderRadiusValue > 0 ? borderRadiusValue : 5;
    _listContainerHeight.value = listContainerWidthHeightValue > 0 ? listContainerWidthHeightValue : 40;
    _listContainerWidth.value  = listContainerWidthHeightValue > 0 ? listContainerWidthHeightValue : 40;

    _color.value = Color.fromRGBO(
      random.nextInt(255), 
      random.nextInt(255), 
      random.nextInt(255), 
      1
    );

  }

  final List<Cubic> curves = [ 
    Curves.fastLinearToSlowEaseIn,
    Curves.ease,
    Curves.easeIn,
    Curves.easeInToLinear,
    Curves.easeInSine,
    Curves.easeInQuad,
    Curves.easeInCubic,
    Curves.easeInQuart,
    Curves.easeInQuint,
    Curves.easeInExpo,
    Curves.easeInCirc,
    Curves.easeInBack,
    Curves.easeOut,
    Curves.linearToEaseOut,
    Curves.easeOutSine,
    Curves.easeOutQuad,
    Curves.easeOutCubic,
    Curves.easeOutQuart,
    Curves.easeOutQuint,
    Curves.easeOutExpo,
    Curves.easeOutCirc,
    Curves.easeOutBack,
    Curves.easeInOut,
    Curves.easeInOutSine,
    Curves.easeInOutQuad,
    Curves.easeInOutCubic,
    Curves.easeInOutQuart,
    Curves.easeInOutQuint,
    Curves.easeInOutExpo,
    Curves.easeInOutCirc,
    Curves.easeInOutBack,
    Curves.fastOutSlowIn,
    Curves.slowMiddle,
  ];
}
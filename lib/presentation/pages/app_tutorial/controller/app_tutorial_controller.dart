

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widgets_app/presentation/pages/app_tutorial/components/slides/slides.dart';

/// ApptutorialController apptutorialController = Get.put(ApptutorialController());

class AppTutorialController extends GetxController{
  
  late PageController _pageController;
  PageController get  pageController => _pageController;

  final _silidersEndReached = false.obs;
  bool get silidersEndReached => _silidersEndReached.value;

  void init(){
    _pageController = PageController();
    _pageController.addListener((){

      if( !_silidersEndReached.value && (_pageController.page ?? 0) >= (slides.length -1.5 ) ){
      _silidersEndReached.value = true;
      
    }

      print("Pagina actual ${_pageController.page}");
    });
  }
}
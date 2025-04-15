import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widgets_app/config/navigation/navigation.dart';
import 'package:widgets_app/presentation/menu/menu_items.dart';

/// SideMenuController _sideMenuController = Get.put(SideMenuController());

class SideMenuController extends GetxController{

  var navDrawerSelectedIndex = 0.obs;

  void setNavDrawerSelectedIndex({required int value, required GlobalKey<ScaffoldState> scaffoldKey}){
    navDrawerSelectedIndex.value = value;
    navigateToDrawerIndex(value);
    scaffoldKey.currentState?.closeDrawer();
  }

  void navigateToDrawerIndex(int index){
    Navigation.goToPage(page: appMenuItems[index].link );
  }

}
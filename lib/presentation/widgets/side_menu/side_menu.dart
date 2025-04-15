import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widgets_app/presentation/menu/menu_items.dart';
import 'package:widgets_app/presentation/widgets/side_menu/controller/side_menu_controller.dart';

class SideMenu extends StatelessWidget {

  final GlobalKey<ScaffoldState> scaffoldKey;
   
  const SideMenu({
    super.key, 
    required this.scaffoldKey
  });
  
  @override
  Widget build(BuildContext context) {
    final hasNotch  = MediaQuery.of(context).viewPadding.top > 35;
    
    SideMenuController sideMenuController = Get.put(SideMenuController());

    return Obx( ()=> NavigationDrawer(
      selectedIndex: sideMenuController.navDrawerSelectedIndex.value,
      onDestinationSelected: (value){
        sideMenuController.setNavDrawerSelectedIndex(
          value: value, 
          scaffoldKey: scaffoldKey
        );
      },
      children: [
        
        Padding(
          padding: EdgeInsets.fromLTRB( 28, hasNotch ? 10 : 20, 16, 10),
          child: const Text("Menú"),
        ),

        ...appMenuItems
        .sublist(0,3)
        .map( (menuElement) => NavigationDrawerDestination(
          icon: Icon( menuElement.icon ), 
          label: Text( menuElement.title )
        )),

        Padding(
          padding: EdgeInsets.fromLTRB( 28,16,28,10 ),
          child: const Divider()
        ),

        Padding(
          padding: EdgeInsets.fromLTRB( 28,10,16,10 ),
          child: const Text("Más opciones"),
        ),

        ...appMenuItems
        .sublist(3)
        .map( (menuElement) => NavigationDrawerDestination(
          icon: Icon( menuElement.icon ), 
          label: Text( menuElement.title )
        )),
      ]
    ));
  }
}
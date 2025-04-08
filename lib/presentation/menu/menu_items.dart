import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/menu/menu_item.dart';
import 'package:widgets_app/presentation/pages/pages.dart';

const appMenuItems = <MenuItems>[

  MenuItems(
    title: "Botones", 
    subTitle: "Varios botones en Flutter", 
    link: ButtonsPage.route, 
    icon: Icons.smart_button_outlined
  ),

  MenuItems(
    title: "Tarjetas", 
    subTitle: "Un contenedor estilizado", 
    link: CardsPage.route, 
    icon: Icons.credit_card
  ),

  MenuItems(
    title: "Indicador de progreso", 
    subTitle: "Generales y controlados", 
    link: ProgressPage.route, 
    icon: Icons.refresh_rounded
  ),

];
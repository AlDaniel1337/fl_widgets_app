import 'package:flutter/material.dart';

class MenuItems {
  
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;


  const MenuItems({
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon
  });

  
  MenuItems copyWith({
    String? title,
    String? subTitle,
    String? link,
    IconData? icon,
  }) {
    return MenuItems(
      title: title ?? this.title,
      subTitle: subTitle ?? this.subTitle,
      link: link ?? this.link,
      icon: icon ?? this.icon,
    );
  }
}

/// elementos del menú
const appMenuItems = <MenuItems>[

  MenuItems(
    title: "Botones", 
    subTitle: "Varios botones en Flutter", 
    link: "/buttons", 
    icon: Icons.smart_button_outlined
  ),

  MenuItems(
    title: "Tarjetas", 
    subTitle: "Un contenedor estilizado", 
    link: "/card", 
    icon: Icons.credit_card
  ),

];
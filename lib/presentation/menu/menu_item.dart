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





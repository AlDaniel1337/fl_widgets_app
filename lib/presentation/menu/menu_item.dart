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


/// Elementos del menú
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


/// Menu principal
class MainMenu extends StatelessWidget {
   
  const MainMenu({super.key});
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) => _CustomListTile( item: appMenuItems[index], )
    );
  }
}


class _CustomListTile extends StatelessWidget {

  final MenuItems item;

  const _CustomListTile({ required this.item });

  @override
  Widget build(BuildContext context) {

    //& Colores del tema
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      title: Text( item.title ),
      subtitle: Text( item.subTitle ),
      leading: Icon( item.icon, color: colors.primary, ),
      trailing: Icon( Icons.arrow_forward_ios_outlined, color: colors.primary, ),
      onTap: (){},
    );
  }
}
import 'package:flutter/material.dart';
import 'package:widgets_app/config/navigation/navigation.dart';
import 'package:widgets_app/presentation/menu/menu_item.dart';
import 'package:widgets_app/presentation/menu/menu_items.dart';

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
      onTap: (){
        Routes.goToPage( page: item.link );
      },
    );
  }
}
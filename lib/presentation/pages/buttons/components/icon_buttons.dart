import 'package:flutter/material.dart';

class IconButtons extends StatelessWidget {
   
  const IconButtons({super.key});
  
  @override
  Widget build(BuildContext context) {

    //& Colores del tema
    final colors = Theme.of(context).colorScheme;

    return Center(
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: [

          IconButton(
            onPressed: (){}, 
            icon: Icon( Icons.icecream_outlined ),
          ),

          IconButton(
            onPressed: (){}, 
            icon: Icon( Icons.icecream_outlined ),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(colors.primary),
              iconColor: WidgetStatePropertyAll( Colors.white )
            ),
          ),
          
        ],
      )
    );
  }
}
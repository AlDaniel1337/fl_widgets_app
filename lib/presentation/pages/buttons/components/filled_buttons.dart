import 'package:flutter/material.dart';

class FilledButtons extends StatelessWidget {
   
  const FilledButtons({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: [

          FilledButton(
            onPressed: (){}, 
            child: const Text("Filled Button")
          ),

          FilledButton.icon(
            onPressed: (){}, 
            icon: Icon( Icons.hourglass_bottom ),
            label: Text("Filled icon"),
          ),
          
        ],
      )
    );
  }
}
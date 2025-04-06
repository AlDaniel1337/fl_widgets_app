import 'package:flutter/material.dart';

class OutlineButtons extends StatelessWidget {
   
  const OutlineButtons({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: [

          OutlinedButton(
            onPressed: (){}, 
            child: const Text("Outline Button")
          ),

          OutlinedButton.icon(
            onPressed: (){}, 
            icon: Icon( Icons.hourglass_bottom ),
            label: Text("Outline icon"),
          ),
          
        ],
      )
    );
  }
}
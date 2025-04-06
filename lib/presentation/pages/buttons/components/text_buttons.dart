import 'package:flutter/material.dart';

class TextButtons extends StatelessWidget {
   
  const TextButtons({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: [

          TextButton(
            onPressed: (){}, 
            child: const Text("Text Button")
          ),

          TextButton.icon(
            onPressed: (){}, 
            icon: Icon( Icons.microwave_sharp ),
            label: Text("Text icon"),
          ),
          
        ],
      )
    );
  }
}
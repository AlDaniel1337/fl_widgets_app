import 'package:flutter/material.dart';

class FloatingActionButtons extends StatelessWidget {
   
  const FloatingActionButtons({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: [

          ElevatedButton(
            onPressed: (){}, 
            child: const Text("Elevated Button")
          ),

          ElevatedButton(
            onPressed: null, 
            child: const Text("Elevated Disabled")
          ),

          ElevatedButton.icon(
            onPressed:(){}, 
            icon: Icon( Icons.access_alarm_rounded ),
            label: Text("Elevated Icon"),
          ),

          ElevatedButton.icon(
            onPressed: null, 
            icon: Icon( Icons.access_alarm_rounded ),
            label: Text("Elevated Icon Disabled"),
          ),
          
        ],
      )
    );
  }
}
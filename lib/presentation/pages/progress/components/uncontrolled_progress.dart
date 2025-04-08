import 'package:flutter/material.dart';

/// Indicadores circulares sin controlar
class UncontrolledProgress extends StatelessWidget {

  const UncontrolledProgress({super.key});

  @override
  Widget build(BuildContext context) {
    
    final themeColors = Theme.of(context).colorScheme;

    return Column(
      children: [
    
        const SizedBox(height: 30),
        const Text("Circular Progress Indicator"),
        const SizedBox(height: 10),
        
        // Indicadores controlados
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(),
    
            const SizedBox(width: 10),
            const CircularProgressIndicator( strokeWidth: 2, backgroundColor: Colors.black45, ),
            
            const SizedBox(width: 10),
            CircularProgressIndicator( strokeWidth: 3, backgroundColor: themeColors.inversePrimary, ),
          ],
        ),

        const SizedBox(height: 30),
        const Text("Linear Progress Indicator"),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: LinearProgressIndicator(),
        )
    
      ],
    );
  }
}

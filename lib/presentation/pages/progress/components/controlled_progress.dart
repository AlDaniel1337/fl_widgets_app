import 'package:flutter/material.dart';

/// Indicadores circulares controlado
class ControlledProgress extends StatelessWidget {

  const ControlledProgress({super.key});

  @override
  Widget build(BuildContext context) {
    
    final themeColors = Theme.of(context).colorScheme;

    return StreamBuilder(
      
      stream: Stream.periodic( const Duration( milliseconds: 300 ), (value){
        return ( value * 2 ) / 100;
      }).takeWhile( (value) => value < 100 ),

      builder: (context, snapshot) {

        final progressValue = snapshot.data ?? 0;

        return Column(
          children: [
        
            const SizedBox(height: 30),
            const Text("Circular Progress Indicator - Controlado"),
            const SizedBox(height: 10),
            
            // Indicadores controlados
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(value: progressValue,),
        
                const SizedBox(width: 10),
                CircularProgressIndicator(
                  value: progressValue,
                  strokeWidth: 2, 
                  backgroundColor: Colors.black45, 
                  ),
                
                const SizedBox(width: 10),
                CircularProgressIndicator( 
                  value: progressValue,
                  strokeWidth: 3, 
                  backgroundColor: themeColors.inversePrimary, 
                ),
              ],
            ),

            const SizedBox(height: 30),
            const Text("Linear Progress Indicator - Controlado"),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: LinearProgressIndicator( value: progressValue, ),
            )
        
          ],
        );
      }
    );
  }
}

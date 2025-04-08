import 'package:flutter/material.dart';

class ShowSnackbarBtn extends StatelessWidget {
   
  const ShowSnackbarBtn({super.key});

  void showSnackBar(BuildContext context){

    // Limpiar snackbars
    ScaffoldMessenger.of(context).clearSnackBars();

    // Mostrar snackbar
    ScaffoldMessenger.of(context).showSnackBar(

      // Snackbar nuevo
      SnackBar(
        content: const Text("Hola mundo"),
        action: SnackBarAction(label: "OK", onPressed: (){}),
        duration: const Duration( seconds: 2 ),
      )

    );
  }
  
  @override
  Widget build(BuildContext context) {
    return  FloatingActionButton.extended(
      label: const Text("Mostrar Snackbar"),
      icon: const Icon( Icons.remove_red_eye_outlined ),
      onPressed: () => showSnackBar(context), 
    );
  }
}
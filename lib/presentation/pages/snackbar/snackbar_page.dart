import 'package:flutter/material.dart';
import 'package:widgets_app/config/navigation/navigation.dart';
import 'package:widgets_app/presentation/pages/snackbar/components/show_snackbar_btn.dart';

class SnackbarPage extends StatelessWidget {

  static const String route = "/snackbar";
   
  const SnackbarPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
         title: const Text('Snackbar y Diálogos'),
         centerTitle: true,
      ),
   
      body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            FilledButton.tonal(
              onPressed: () => showAboutDialog(
                context: context,
                children: [
                  Text("Minim qui ea id cupidatat deserunt aute eiusmod.")
                ]
              ), 
              child: const Text("Licencias usadas")
            ),
            SizedBox( height: 10 ),

            FilledButton.tonal(
              onPressed: () => openDialog(context), 
              child: const Text("Mostrar diálogo")
            ),
          ],
         )
      ),

      floatingActionButton: ShowSnackbarBtn()
    );
  }


  void openDialog( BuildContext buildContext ) => showDialog(
    context: buildContext, 
    barrierDismissible: false,
    builder: (context) => AlertDialog(
      title: Text("Estas seguro?"),
      content: Text("Sunt eu incididunt elit culpa Lorem deserunt eu cupidatat qui elit anim nulla qui."),
      actions: [
        TextButton(onPressed: () => Navigation.goBack(), child: const Text("Cancelar")),
        FilledButton(onPressed: (){}, child: const Text("Aceptar")),
      ],
    ),
  );
  

}
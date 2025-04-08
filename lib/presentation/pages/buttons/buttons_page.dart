import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/pages/buttons/components/custom_button.dart';
import 'package:widgets_app/presentation/pages/buttons/components/filled_buttons.dart';
import 'package:widgets_app/presentation/pages/buttons/components/floating_action_buttons.dart';
import 'package:widgets_app/presentation/pages/buttons/components/icon_buttons.dart';
import 'package:widgets_app/presentation/pages/buttons/components/outline_buttons.dart';
import 'package:widgets_app/presentation/pages/buttons/components/text_buttons.dart';

class ButtonsPage extends StatelessWidget {

  static const String route = "/buttons";
   
  const ButtonsPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botones'),
        centerTitle: true,
      ),
   
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            spacing: 10,
            children: [
              Text("Floating Action Buttons"),
              FloatingActionButtons(),

              SizedBox(height: 10),
              Text("Filled Buttons"),
              FilledButtons(),

              SizedBox(height: 10),
              Text("Outline Buttons"),
              OutlineButtons(),

              SizedBox(height: 10),
              Text("Text Buttons"),
              TextButtons(),

              SizedBox(height: 10),
              Text("Icon Buttons"),
              IconButtons(),

              SizedBox(height: 10),
              Text("Custom Buttons"),
              CustomButton(
                onTap: () {},
                child: const Text("Custom Button", style: TextStyle(color: Colors.white),),
              ),

              CustomButton(
                onTap: () {},
                useShadow: true,
                gradient: LinearGradient(colors: [
                  Colors.red, 
                  Colors.blue,
                  Colors.green,
                ]),
                child: const Text("Custom Button", style: TextStyle(color: Colors.white),),
              )
              
            ],
          )
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.arrow_back_ios_new_outlined ),
        onPressed: (){}
      ),
    );
  }
}
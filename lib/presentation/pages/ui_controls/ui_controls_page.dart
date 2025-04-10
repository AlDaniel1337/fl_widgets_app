import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widgets_app/presentation/pages/ui_controls/controller/ui_controls_controller.dart';

class UiControlsPage extends StatelessWidget {

  static const String route = "/ui_controls";
   
  const UiControlsPage({super.key});
  
  @override
  Widget build(BuildContext context) {

    UiControlsController uiControlsController = Get.put(UiControlsController());

    return Scaffold(
   
      appBar: AppBar(
         title: const Text('Controles UI + Tiles'),
         centerTitle: true,
      ),
   
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Obx( () => ListView(
          physics: const ClampingScrollPhysics(),
          children: [

            const Text( "Switch List Tile" ),
            SwitchListTile(
              title: const Text( "Developer Mode" ),
              subtitle: const Text( "Controles Adicionales" ),
              value: uiControlsController.isInDeveloperMode, 
              onChanged:(value) => uiControlsController.setIsInDeveloperMode(),
            ),


            SizedBox(height: 25),
            const Text( "Expansion Tile + Radio List Tile" ),
            ExpansionTile(
              title: const Text("Vehiculo de transporte"),
              subtitle: Text(uiControlsController.selectedTransportation.value.name),
              children: [
                ...Transportation.values.map((transportation) =>  RadioListTile(
                  title: Text(transportation.name),
                  value: transportation, 
                  groupValue: uiControlsController.selectedTransportation.value, 
                  onChanged: (value) => uiControlsController.setSelectedTransportation(value ?? Transportation.car)
                )),
              ],
            ),


            SizedBox(height: 25),
            const Text( "Checkbox List Tile" ),
            CheckboxListTile(
              title: const Text("Desayuno?"),
              value: uiControlsController.wantsBreakfast.value, 
              onChanged: (val) => uiControlsController.wantsBreakfast(val),
            ),
            CheckboxListTile(
              title: const Text("Almuerzo?"),
              value: uiControlsController.wantsLunch.value, 
              onChanged: (val) => uiControlsController.wantsLunch(val),
            ),
            CheckboxListTile(
              title: const Text("Cena?"),
              value: uiControlsController.wantsDinner.value, 
              onChanged: (val) => uiControlsController.wantsDinner(val),
            ),

          ],
        ),
            ),
      ));
  }
}
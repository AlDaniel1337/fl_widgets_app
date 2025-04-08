import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/pages/cards/components/card_type.dart';
import 'package:widgets_app/presentation/pages/cards/components/cards_list.dart';

class CardsPage extends StatelessWidget {

  static const String route = "/cards";
   
  const CardsPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
         title: const Text('Tarjetas'),
         centerTitle: true,
      ),
   
      body: SingleChildScrollView(
        child: Column(
          children: [

            ...cards.map( (element) => CardType(
              label: element[CardsKeys.label], 
              elevation: element[CardsKeys.elevation], 
            )),

            ...cards.map( (element) => CardType2(
              label: element[CardsKeys.label], 
              elevation: element[CardsKeys.elevation], 
            )),

            ...cards.map( (element) => CardType3(
              label: element[CardsKeys.label], 
              elevation: element[CardsKeys.elevation], 
            )),

            ...cards.map( (element) => CardWithImage(
              label: element[CardsKeys.label], 
              elevation: element[CardsKeys.elevation], 
            )),

            SizedBox(height: 100,)

          ],
        ),
      )
    );
  }
}
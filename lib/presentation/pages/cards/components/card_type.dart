import 'package:flutter/material.dart';

class CardType extends StatelessWidget {

  final String label;
  final double elevation;
   
  const CardType({
    super.key, 
    required this.label, 
    required this.elevation
  });
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(onPressed: (){}, icon: Icon( Icons.more_vert_outlined ))
            ),
            
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label)
            )
          ],
        ),
      )
    );
  }
}

class CardType2 extends StatelessWidget {

  final String label;
  final double elevation;
   
  const CardType2({
    super.key, 
    required this.label, 
    required this.elevation
  });
  
  @override
  Widget build(BuildContext context) {

    //& Colores del tema
    final colors = Theme.of(context).colorScheme;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all( Radius.circular(12) ),
        side: BorderSide(
          color: colors.outline
        )
      ),
      elevation: elevation,
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(onPressed: (){}, icon: Icon( Icons.more_vert_outlined ))
            ),
            
            Align(
              alignment: Alignment.bottomLeft,
              child: Text("$label - outline")
            )
          ],
        ),
      )
    );
  }
}

class CardType3 extends StatelessWidget {

  final String label;
  final double elevation;
   
  const CardType3({
    super.key, 
    required this.label, 
    required this.elevation
  });
  
  @override
  Widget build(BuildContext context) {

    //& Colores del tema
    final colors = Theme.of(context).colorScheme;

    return Card(
      color: colors.surfaceContainer,
      elevation: elevation,
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(onPressed: (){}, icon: Icon( Icons.more_vert_outlined ))
            ),
            
            Align(
              alignment: Alignment.bottomLeft,
              child: Text("$label - filled")
            )
          ],
        ),
      )
    );
  }
}

class CardWithImage extends StatelessWidget {

  final String label;
  final double elevation;
   
  const CardWithImage({
    super.key, 
    required this.label, 
    required this.elevation
  });
  
  @override
  Widget build(BuildContext context) {

    final themeColors = Theme.of(context).colorScheme;
    

    return Card(
      clipBehavior: Clip.hardEdge,
      color: themeColors.surfaceContainer,
      elevation: elevation,
      child: Stack(
        children: [
          
          Image.network(
            "https://picsum.photos/id/${ elevation.toInt() }/600/250",
            height: 150,
            fit: BoxFit.cover,
          ),

          Align(
            alignment: Alignment.topRight,
            child: IconButton(onPressed: (){}, icon: Icon( Icons.more_vert_outlined ))
          ),
        ],
      )
    );
  }
}
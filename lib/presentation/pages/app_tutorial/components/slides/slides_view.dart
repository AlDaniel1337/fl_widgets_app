import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widgets_app/presentation/pages/app_tutorial/components/slides/slide_info.dart';
import 'package:widgets_app/presentation/pages/app_tutorial/components/slides/slides.dart';
import 'package:widgets_app/presentation/pages/app_tutorial/controller/app_tutorial_controller.dart';

AppTutorialController _appTutorialController = Get.put(AppTutorialController());

class SlidesView extends StatelessWidget {
      
  const SlidesView({
    super.key, 
  });
  
  @override
  Widget build(BuildContext context) {

    _appTutorialController.init();

    return PageView.builder(
      controller: _appTutorialController.pageController,
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: slides.length,
      itemBuilder: (context, index) => _PageMainContent( slideInfo: slides[index] ),
    );
  }
}


class _PageMainContent extends StatelessWidget {

  final SlideInfo slideInfo;

  const _PageMainContent({
    required this.slideInfo
  });

  @override
  Widget build(BuildContext context) {

    final textStyle = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            _SliderImage(imageUrl: slideInfo.imageUrl),
            const SizedBox( height: 20 ),
            Text( slideInfo.title, style: textStyle.titleLarge, ),
            const SizedBox( height: 10 ),
            Text( slideInfo.caption, style: textStyle.bodySmall, ),

          ],
        ),
      ),
    );
  }
}

class _SliderImage extends StatelessWidget {
  const _SliderImage({
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image( 
      image: AssetImage( imageUrl ),
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
    
        //+ Regresar imagen si ya se cargo
        if(loadingProgress == null) return child;
    
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: const Text("Esta cargando la imagen"),
        );
      },
    );
  }
}
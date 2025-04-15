import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widgets_app/config/consts/consts.dart';
import 'package:widgets_app/config/plugins/animations.dart';
import 'package:widgets_app/presentation/pages/infinite_scroll/controller/infinite_scroll_controller.dart';

class InfiniteScrollPage extends StatelessWidget {

  static const String route = "/infinite_scroll";
   
  const InfiniteScrollPage({super.key});
  
  @override
  Widget build(BuildContext context) {

    NetworkImagesUrl networkImagesUrl = NetworkImagesUrl();
    InfiniteScrollController infiniteScrollController = Get.put(InfiniteScrollController());
    infiniteScrollController.init();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Infinite Scroll'),
      ),
   
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Center(
          child: Obx( () => RefreshIndicator(
            onRefresh: () => infiniteScrollController.onRefresh(),
            child: ListView.builder(
              controller: infiniteScrollController.scrollController,
              itemCount: infiniteScrollController.imagesIds.length,
              itemBuilder: (context, index) {
                return FadeInImage(
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 300,
                  placeholder: AssetImage( AssetsImagesUrl.jarLoading.imageUrl ), 
                  image: NetworkImage( networkImagesUrl.picsum("$index").url )
                );
              },
            ),
          )),
        ),
      ),

      floatingActionButton: Obx( () => FloatingActionButton(
        onPressed: (){},
        child: !infiniteScrollController.isLoading.value
        ? Animations.fadeIn( const Icon( Icons.arrow_back_ios_new_outlined ) )
        : Animations.spinPerfect( const Icon( Icons.refresh_rounded ) ),
      )),

    );
  }
}
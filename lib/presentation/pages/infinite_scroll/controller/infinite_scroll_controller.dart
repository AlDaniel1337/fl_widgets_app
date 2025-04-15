import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// InfiniteScrollController infiniteScrollController = Get.put(InfiniteScrollController());

class InfiniteScrollController extends GetxController{

  ScrollController scrollController = ScrollController();
  RxList<int> imagesIds = [1,2,3,4,5].obs;
  var isLoading = false.obs;

  void init(){
    scrollController.dispose();
    scrollController = ScrollController();
    determineScrollPositionAction();
  }

  void addFiveImagesIds(){
    final lastId = imagesIds.last;
    // Agregar 5 ids más
    imagesIds.addAll( [1,2,3,4,5].map( (newId) => lastId + newId ) );
  }

  void loadNextPage() async {
    isLoading.value = true;
    await Future.delayed( const Duration( seconds: 2) );
    addFiveImagesIds();
    moveScrollToBottom();
    isLoading.value = false;
  }

  Future<void> moveScrollToBottom() async {
    
    if( scrollController.position.pixels + 150 <= scrollController.position.maxScrollExtent ) return;

    scrollController.animateTo(
      scrollController.position.pixels +120,
      duration: Duration( milliseconds: 300),
      curve: Curves.fastOutSlowIn,
    );
  }

  void determineScrollPositionAction(){
    scrollController.addListener((){
      if( (scrollController.position.pixels + 500) >= scrollController.position.maxScrollExtent ){
        loadNextPage();
      }
    });
  }

  Future<void> onRefresh() async {
    await Future.delayed( const Duration( seconds: 3 ) );

    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId + 1);

    addFiveImagesIds();
  }
}
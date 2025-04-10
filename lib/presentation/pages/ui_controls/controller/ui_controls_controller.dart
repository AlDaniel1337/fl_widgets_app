

import 'package:get/get.dart';

/// UiControlsController uiControlsController = Get.put(UiControlsController());

enum Transportation { car, plane, boat, submarine }

class UiControlsController extends GetxController{

  final _isInDeveloperMode = false.obs;
  bool get isInDeveloperMode => _isInDeveloperMode.value;
  void setIsInDeveloperMode() => _isInDeveloperMode.value = !_isInDeveloperMode.value;
  
  Rx<Transportation> selectedTransportation = Transportation.car.obs;
  void setSelectedTransportation( Transportation value) => selectedTransportation.value = value;

  final _wantsBreakfast = false.obs;
  get wantsBreakfast => _wantsBreakfast;
  set wantsBreakfast(_) => _wantsBreakfast.value = !_wantsBreakfast.value;

  final _wantsLunch = false.obs;
  get wantsLunch => _wantsLunch;
  set wantsLunch(_) => _wantsLunch.value = !_wantsLunch.value;

  final _wantsDinner = false.obs;
  get wantsDinner => _wantsDinner;
  set wantsDinner(_) => _wantsDinner.value = !_wantsDinner.value;

}
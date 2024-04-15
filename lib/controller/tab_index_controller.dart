import 'package:get/get.dart';

class TabIndexController extends GetxController{
  RxInt _tabIndex = 0.obs;

  int get tabIndex => _tabIndex.value;

   set setTabIndex(int currentTab){
    _tabIndex.value = currentTab;
  }

}
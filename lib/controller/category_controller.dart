
import 'package:get/get.dart';

class CategoryController extends GetxController{

  RxString _categoryValue = ''.obs;

  String get categoryValue => _categoryValue.value;

  set setCategoryValue(String value){
    _categoryValue.value = value;
  }

  RxString _categoryTitle = ''.obs;
  String get categoryTitle => _categoryTitle.value;

  set setCategoryTitle(String value){
    _categoryTitle.value = value;
  }
}
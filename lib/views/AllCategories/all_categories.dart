import 'package:flutter/material.dart';
import 'package:foodiez_app/constants/constants.dart';
import 'package:foodiez_app/utils/util_functions.dart';
import 'package:foodiez_app/views/AllCategories/widgets/all_catgeory_one.dart';
import 'package:foodiez_app/views/AllCategories/widgets/back_categories.dart';
import 'package:get/get.dart';

class MyAllCategories extends StatefulWidget {
  const MyAllCategories({super.key});

  @override
  State<MyAllCategories> createState() => _MyAllCategoriesState();
}

class _MyAllCategoriesState extends State<MyAllCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories",style: appStyle(fontSize: 15, fontWeight: FontWeight.w600, color: kGray),),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(Icons.arrow_back_ios_new),
        ),
        
      ),
      body: const MyBackContainer(
        color: kWhite,
        widget: AllCategoryOne(),
      ),
    );
  }
}


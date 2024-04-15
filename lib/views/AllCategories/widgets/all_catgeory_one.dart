import 'package:flutter/material.dart';
import 'package:foodiez_app/constants/constants.dart';
import 'package:foodiez_app/constants/uidata.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodiez_app/utils/util_functions.dart';
import 'package:foodiez_app/views/AllCategories/category_details_screen.dart';
import 'package:get/get.dart';

class AllCategoryOne extends StatelessWidget {
  const AllCategoryOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: List.generate(categories.length, (index){
        var category = categories[index];
        return GestureDetector(
          onTap: () {
            Get.to(const MyCategoryDetailsScreen(),transition: Transition.fadeIn,duration: const Duration(milliseconds: 900));
          },
          child: ListTile(
            leading: CircleAvatar(
              radius: 18.r,
              backgroundColor: kGrayLight,
              child: Image.network(category["imageUrl"] as String,fit: BoxFit.contain,),
            ),
            title: Text(category["title"] as String,style: appStyle(fontSize: 12, fontWeight: FontWeight.normal, color: kGray),),
            trailing: Icon(Icons.arrow_forward_ios_rounded,color: kGray,size: 15.r,),
          ),
        );
      }),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodiez_app/constants/uidata.dart';
import 'package:foodiez_app/controller/category_controller.dart';
import 'package:foodiez_app/views/Home/widgets/category_one_item.dart';
import 'package:get/get.dart';

class MyCategoryList extends StatelessWidget {
  const MyCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      padding: EdgeInsets.only(left: 12.w, top: 5.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(categories.length, (index) {
          var category = categories[index];
          return MyOneCategoryListItem(category: category);
        }),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodiez_app/controller/category_controller.dart';
import 'package:foodiez_app/sizes/sizes.dart';
import 'package:foodiez_app/utils/util_functions.dart';
import 'package:foodiez_app/views/AllCategories/all_categories.dart';
import 'package:foodiez_app/constants/constants.dart';
import 'package:get/get.dart';


class MyOneCategoryListItem extends StatelessWidget {
  const MyOneCategoryListItem({
    super.key,
    required this.category,
  });

  final Map<String, Object> category;

  @override
  Widget build(BuildContext context) {
    final categoryController = Get.put(CategoryController());
    return GestureDetector(
      onTap: () {
        if (categoryController.categoryValue == category["_id"]) {
          categoryController.setCategoryValue = '';
          categoryController.setCategoryTitle = '';
        } else if (category['title'] == 'More') {
          Get.to(const MyAllCategories(),transition: Transition.fadeIn,duration: const Duration(milliseconds: 900));
        } else {
          categoryController.setCategoryTitle =
              category['title'] as String;
          categoryController.setCategoryValue = category['_id'] as String;
        }
      },
      child: Obx(
        () => Container(
          margin: EdgeInsets.only(right: 5.w),
          padding: EdgeInsets.only(top: 4.h),
          width: getWidth(0.18, context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
                color: categoryController.categoryValue == category["_id"]
                    ? kSecondary
                    : kOffWhite,
                width: .5.w),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
                child: Image.network(
                  category['imageUrl'] as String,
                  fit: BoxFit.contain,
                ),
              ),
              Text(
                category['title'] as String,
                style: appStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: kDark),
              )
            ],
          ),
        ),
      ),
    );
  }
}

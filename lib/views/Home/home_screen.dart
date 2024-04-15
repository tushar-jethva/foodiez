import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodiez_app/constants/constants.dart';
import 'package:foodiez_app/views/Home/widgets/category_list.dart';
import 'package:foodiez_app/widgets/custom_appbar.dart';
import 'package:foodiez_app/widgets/custom_container.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimary,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.h),
          child: MyCustomAppBar(),
        ),
        body: SafeArea(
            child: MyCustomContainer(
                screen: Column(
          children: [
            MyCategoryList(),
          ],
        ))));
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodiez_app/constants/constants.dart';
import 'package:foodiez_app/sizes/sizes.dart';

class MyCustomContainer extends StatelessWidget {
  final Widget screen;
  const MyCustomContainer({super.key, required this.screen});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(0.75, context),
      width: double.infinity,
      child: ClipRRect(
        borderRadius:  BorderRadius.only(
          bottomLeft: Radius.circular(30.r),
          bottomRight: Radius.circular(30.r)
        ),
        child: Container(
          width: double.infinity,
          color: kOffWhite,
          child: SingleChildScrollView(
            child: screen,
          ),
        ),
      ),
    );
  }
}
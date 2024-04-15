import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodiez_app/constants/constants.dart';
import 'package:foodiez_app/widgets/custom_container.dart';

class MySearchScreen extends StatefulWidget {
  const MySearchScreen({super.key});

  @override
  State<MySearchScreen> createState() => _MySearchScreenState();
}

class _MySearchScreenState extends State<MySearchScreen> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: kPrimary,
      appBar:PreferredSize(preferredSize: Size.fromHeight(130.h), child: Container(height: 130.h)),
      body: SafeArea(child: MyCustomContainer(screen: Container()))
    );
  }
}
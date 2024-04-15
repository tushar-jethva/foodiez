
import 'package:flutter/material.dart';

class MyBackContainer extends StatelessWidget {
  final Widget widget;
  final Color color;
  const MyBackContainer({super.key, required this.widget, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        image: DecorationImage(image: AssetImage("assets/images/restaurant_bk.png"),fit: BoxFit.cover,opacity: .7),
      ),
      child: widget,
    );
  }
}
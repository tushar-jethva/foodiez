
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodiez_app/constants/constants.dart';
import 'package:foodiez_app/utils/util_functions.dart';

class MyCustomAppBar extends StatelessWidget {
  const MyCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      color: kOffWhite,
      margin: EdgeInsets.only(top: 20.h),
      padding: EdgeInsets.only(top: 20.h),
      child: ListTile(
        tileColor: kOffWhite,
        titleAlignment: ListTileTitleAlignment.center,
        leading: CircleAvatar(radius: 28.r,backgroundColor: kSecondary,backgroundImage: NetworkImage("https://tse1.mm.bing.net/th/id/OIP.pPrzmA6h_e7iEEZ7EC8TCwHaLJ?rs=1&pid=ImgDetMain"),),
        title: Text("Deliver to", style: appStyle(fontSize: 13, fontWeight: FontWeight.w600, color: kSecondary),),
        subtitle:  Text("21, KrishnaNagar, near of radha road, Ahmedabad",style: appStyle(fontSize: 12, fontWeight: FontWeight.normal, color: kGrayLight),),
        trailing: Text(getTimeOfDay(),style: TextStyle(fontSize: 34),),
      ),
    );
  }
}

String getTimeOfDay(){
  DateTime now = DateTime.now();
  int hours = now.hour;
  print(hours);
  if(hours>=0 && hours<12){
    return '☀️';
  }
  else if(hours>=12 && hours<18){
    return '⛅';
  }
  else{
    return '🌙';
  }
}
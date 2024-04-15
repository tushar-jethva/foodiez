import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:foodiez_app/constants/constants.dart';
import 'package:foodiez_app/controller/tab_index_controller.dart';
import 'package:foodiez_app/views/Cart/cart_screen.dart';
import 'package:foodiez_app/views/Home/home_screen.dart';
import 'package:foodiez_app/views/Profile/profile_screen.dart';
import 'package:foodiez_app/views/Search/search_screen.dart';
import 'package:get/get.dart';

class MyInitialScreen extends StatefulWidget {
  const MyInitialScreen({super.key});

  @override
  State<MyInitialScreen> createState() => _MyInitialScreenState();
}

class _MyInitialScreenState extends State<MyInitialScreen> {
  List<Widget> screens = const [
    MyHomeScreen(),
    MySearchScreen(),
    MyCartScreen(),
    MyProfileScreen()
  ];
  final tabIndexController = Get.put(TabIndexController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Stack(
          children: [
            screens[tabIndexController.tabIndex],
            Align(
              alignment: Alignment.bottomCenter,
              child: Theme(
                  data: Theme.of(context).copyWith(canvasColor: kPrimary),
                  child: Obx(
                    () => BottomNavigationBar(
                        elevation: 0,
                        showSelectedLabels: false,
                        showUnselectedLabels: false,
                        selectedIconTheme:
                            const IconThemeData(color: kSecondary),
                        unselectedIconTheme:
                            const IconThemeData(color: kUnselectedItemColor),
                        type: BottomNavigationBarType.fixed,
                        onTap: (value) {
                          tabIndexController.setTabIndex = value;
                        },
                        currentIndex: tabIndexController.tabIndex,
                        items: [
                          BottomNavigationBarItem(
                              icon: tabIndexController.tabIndex == 0
                                  ? const Icon(AntDesign.appstore1)
                                  : const Icon(AntDesign.appstore_o),
                              label: "Home"),
                          const BottomNavigationBarItem(
                              icon: Icon(Icons.search), label: "Search"),
                          const BottomNavigationBarItem(
                              icon: Badge(
                                label: Text("1"),
                                child: Icon(FontAwesome.opencart),
                              ),
                              label: "Cart"),
                          BottomNavigationBarItem(
                              icon: tabIndexController.tabIndex == 3
                                  ? const Icon(FontAwesome.user_circle)
                                  : const Icon(FontAwesome.user_circle_o),
                              label: "Person"),
                        ]),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

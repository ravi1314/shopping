import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:shopping/feature/ui/screen/cart/cart_import.dart';
import 'package:shopping/feature/ui/screen/home/home_import.dart';
import 'package:shopping/feature/ui/screen/order/order_import.dart';
import 'package:shopping/feature/ui/screen/profile/profile_import.dart';

class BottomNavbarWidget extends StatefulWidget {
  const BottomNavbarWidget({super.key});

  @override
  State<BottomNavbarWidget> createState() => _BottomNavbarWidgetState();
}

class _BottomNavbarWidgetState extends State<BottomNavbarWidget> {
  int currentTabIndex = 0;
  late List<Widget> pages;
  late Widget currentPage;
  late HomeScreen home;
  late ProfileScreen profile;
  late CartScreen cart;
  late OrderScreen order;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    home = const HomeScreen();
    profile = const ProfileScreen();
    order = const OrderScreen();
    pages = [home, profile, order];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentTabIndex],
      bottomNavigationBar: CurvedNavigationBar(
          height: 65,
          backgroundColor: Colors.white,
          color: Colors.black,
          animationDuration: const Duration(milliseconds: 500),
          onTap: (index) {
            setState(() {
              currentTabIndex = index;
            });
          },
          items: [
            Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.person_outline,
              color: Colors.white,
            ),
          ]),
    );
  }
}

import 'package:ecommerce_app/screens/Favorite/favorite.dart';
import 'package:ecommerce_app/screens/Cart/cart_screen.dart';
import 'package:ecommerce_app/screens/Home/home_screen.dart';
import 'package:ecommerce_app/screens/Profile/profile.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  List screen = [
    HomeScreen(),
    Favorite(),
    HomeScreen(),
    CartScreen(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // prevent floating action button when keyboard enable
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          currentIndex = 2;
        });
      },
      shape: CircleBorder(
      ),
      backgroundColor: kprimaryColor,
      child: Icon(Icons.home,color: Colors.white, size: 25,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.white,
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
              setState(() {
                currentIndex = 0;
              });
            }, icon: Icon(Icons.grid_view_outlined,size: 25, color: currentIndex == 0 ? kprimaryColor:Colors.grey.shade400,)
            ),
            IconButton(
              onPressed: () {
              setState(() {
                currentIndex = 1;
              });
            }, icon: Icon(Icons.favorite_border,size: 25, color: currentIndex == 1 ? kprimaryColor:Colors.grey.shade400,)
            ),
           SizedBox(width: 15,),
            IconButton(
              onPressed: () {
              setState(() {
                currentIndex = 3;
              });
            }, icon: Icon(Icons.shopping_cart_outlined,size: 25, color: currentIndex == 3 ? kprimaryColor:Colors.grey.shade400,)
            ),
            IconButton(
              onPressed: () {
              setState(() {
                currentIndex = 4;
              });
            }, icon: Icon(Icons.person,size: 25, color: currentIndex == 4 ? kprimaryColor:Colors.grey.shade400,)
            ),
          ],
        ),
      ),
      body: screen[currentIndex],
    );
  }
}
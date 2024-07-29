import 'package:ecommerce_app/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
 final VoidCallback openDrawer;
  const CustomAppBar({
    Key? key,required this.openDrawer
  }) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          padding: EdgeInsets.all(20),
          highlightColor: kprimaryColor,
          splashColor: kprimaryColor,
          iconSize: 25,
          splashRadius: 20,
          onPressed: () => widget.openDrawer, icon: Icon(Icons.grid_view_outlined)
        ),
        IconButton(
          padding: EdgeInsets.all(20),
          highlightColor: kprimaryColor,
          iconSize: 25,
          splashRadius: 20,
          splashColor: kprimaryColor,
          onPressed: () {
          
        }, icon: Icon(Icons.notifications))
      ],
    );
  }
}
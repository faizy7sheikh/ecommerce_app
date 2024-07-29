import 'package:ecommerce_app/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            focusColor: kcontentColor,
            padding: EdgeInsets.all(15),
            onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios)
          ),
          Spacer(),
          IconButton(
            focusColor: kcontentColor,
            padding: EdgeInsets.all(15),
            onPressed: () {
            
          }, icon: Icon(Icons.share_outlined)
          ),
          SizedBox(width: 10),
          IconButton(
            focusColor: kcontentColor,
            padding: EdgeInsets.all(15),
            onPressed: () {
            
          }, icon: Icon(Icons.favorite_outlined)
          ),
        ],
      ),
    );
  }
}
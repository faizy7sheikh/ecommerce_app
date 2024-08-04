import 'package:ecommerce_app/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'filter_model.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kcontentColor,
        borderRadius: BorderRadius.circular(30)
      ),
      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 5),
      child: Row(
        children: [
          Icon(Icons.search,color: Colors.grey,size: 25,),
          SizedBox(width: 10,),
          Flexible(
            flex: 4,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                border: InputBorder.none
              ),
            ),
            ),
            Container(
              height: 25,
              width: 1.5,
              color: Colors.grey,
            ),
            IconButton(
              splashRadius: 10,
              focusColor: kcontentColor,
              onPressed: () {
              showFilterModal(context);
            }, icon: Icon(Icons.tune,color: Colors.grey,))
        ],
      ),
    );
  }
  
  void showFilterModal(BuildContext context) {
    showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return FilterModal();
    },
  );
  }
}
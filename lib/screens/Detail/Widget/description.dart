import 'package:ecommerce_app/models/product_model.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Description extends StatelessWidget {
  final String description;
  const Description({Key? key,required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 120,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kprimaryColor
              ),
              alignment: Alignment.center,
              child: Text("Description",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 16),),
            ),
            Text("Specification",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 16)),
            Text("Reviews",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 16)),
          ],
        ),
        SizedBox(height: 20),
        Text(description,style: TextStyle(fontSize: 16,color: Colors.grey),)
      ],
    );
  }
}
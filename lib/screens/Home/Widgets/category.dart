import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../models/category_model.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder:  (context, index) {
          return Column(
            children: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(categories[index].imageUrl),fit: BoxFit.cover)
                ),
              ),
              SizedBox(height: 5),
              Text(categories[index].title.toString(),style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
            ],
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 20,);
        },
        ),
    );
  }
}
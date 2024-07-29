import 'package:ecommerce_app/models/product_model.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddToCart extends StatefulWidget {
  final Product product;
  const AddToCart({Key? key, required this.product}) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 15),
    child: Container(
      height: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.black
      ),
      padding: EdgeInsets.symmetric(horizontal: 15),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.white,
                width: 2
              )
            ),
            child: Row(
              children: [
                IconButton(
                  iconSize: 18,
                  onPressed: () {
                  setState(() {
                    currentIndex--;
                  });
                }, icon: Icon(Icons.remove,color: Colors.white,)
                ),
                SizedBox(width: 5),
                Text(currentIndex.toString(),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                SizedBox(width: 5),
                IconButton(
                  iconSize: 18,
                  onPressed: () {
                  setState(() {
                    currentIndex++;
                  });
                }, icon: Icon(Icons.add,color: Colors.white,)
                ),
              ],
            ),
          ),
          // add button
          GestureDetector(
            onTap: () {
             final snack= SnackBar(content: Text("Successfully Added!",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.green
              ),));
              ScaffoldMessenger.of(context).showSnackBar(snack);
            },
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                color: kprimaryColor,
                borderRadius: BorderRadius.circular(50)
              ),
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text("Add To Cart",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
            ),
          )
        ],
      ),
    ),
    );
  }
}

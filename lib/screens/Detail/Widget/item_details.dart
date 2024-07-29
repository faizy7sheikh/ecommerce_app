import 'package:ecommerce_app/models/product_model.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ItemDetails extends StatelessWidget {
  final Product product;
  const ItemDetails({Key? key,required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(product.title,style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 25
        ),
        ),
        
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\$${product.price}",style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 25
                  ),
                ),
                SizedBox(height: 10),
                // for rating
                Row(
                  children: [
                    Container(
                      width: 55,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: kprimaryColor
                      ),
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          Icon(Icons.star,size: 15,color: Colors.white,),
                          SizedBox(width: 2,),
                          Text(
                            product.rate.toString(),style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.white
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 5),
                    // review
                    Text(product.review,style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15
                    ),)
                  ],
                )
              ],
            ),

            // jdj
            Spacer(),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: "Seller",style: TextStyle(fontSize: 16)),
                  TextSpan(text: product.seller,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold))
                ]
              )
            )
          ],
        )
      ],
    );
  }
}
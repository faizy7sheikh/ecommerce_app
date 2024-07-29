import 'package:ecommerce_app/models/product_model.dart';
import 'package:ecommerce_app/screens/Detail/details_screen.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({Key? key,required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(product: product,)));
      },
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kcontentColor
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                Center(
                  child: Hero(
                    tag: product.image,
                    child: Image.asset(product.image,width: 130,height: 130,fit: BoxFit.cover,cacheHeight: 130,)),
                ),
                SizedBox(height: 10),
                Padding(padding: EdgeInsets.only(left: 10),
                child: Text(product.title.toString(),style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
                ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("\$${product.price}",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold ),),
                    Row(
                      children: List.generate(product.colors.length, (index) => Container(
                        width: 18,
                        height: 18,
                        margin: EdgeInsets.only(right: 4),
                        decoration: BoxDecoration(
                          color: product.colors[index],
                          shape: BoxShape.circle
                        ),
                      )),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(child: Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)
                ),
                color: kprimaryColor
              ),
              child: GestureDetector(
                onTap: () {
                  
                },
                child: Icon(Icons.favorite_border,color: Colors.white,size: 22,)
              ),
            ),
          ))
        ],
      ),
    );   
  }
}
import 'package:ecommerce_app/models/product_model.dart';
import 'package:ecommerce_app/screens/Detail/Widget/add_to_cart.dart';
import 'package:ecommerce_app/screens/Detail/Widget/description.dart';
import 'package:ecommerce_app/screens/Detail/Widget/detail_app_bar.dart';
import 'package:ecommerce_app/screens/Detail/Widget/image_slider.dart';
import 'package:ecommerce_app/screens/Detail/Widget/item_details.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final Product product;
  const DetailScreen({Key? key,required this.product}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentImage = 0;
  int currentColor = 0;

  @override
  void dispose() {
    // TODO: implement dispose
    FocusScope.of(context).unfocus();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // for add to cart icon and increment qty
      floatingActionButton: AddToCart(product: widget.product),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: kcontentColor,
      body: SafeArea(child: Column(
        children: [
          // back button share and favourite
          DetailAppBar(),

          // image slider
          MyImageSlider(image: widget.product.image, onChange: (index) {
            setState(() {
            currentImage = index;
            });
          },),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: 
              List.generate(3, (index) => AnimatedContainer(
                duration: Duration(
                 microseconds: 300
              ),
              width: currentImage==index ? 15 :8,height: 8,margin: EdgeInsets.only(right: 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: currentImage == index ? Colors.black:Colors.transparent,
                border: Border.all(
                  color: Colors.black
                )
              ),)
              )
          ),

          SizedBox(height: 20,),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40))
            ),
            padding: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  // product name price rating review descripton
                  ItemDetails(product: widget.product),
                  SizedBox(height: 20),
                  Text("Color",style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 18
                   ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: List.generate(widget.product.colors.length, (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          currentColor = index;
                        });
                      },
                      child: AnimatedContainer(duration: Duration(microseconds: 300),
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentColor == index ? Colors.white : widget.product.colors[index],
                        border: currentColor == index ? Border.all(
                          color: widget.product.colors[index]
                        ):Border.all(color: Colors.transparent)
                      ),
                      padding: currentColor == index ? EdgeInsets.all(2) :EdgeInsets.zero,
                      margin: EdgeInsets.only(right: 15),
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: widget.product.colors[index],
                          shape: BoxShape.circle
                        ),
                      ),
                      ),
                    )
                    ),
                  ),

                  // description
                  SizedBox(height: 20),
                  Description(description: widget.product.description,)
              ],
            ),
          )
        ],
      )),
    );
  }
}
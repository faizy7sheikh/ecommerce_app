import 'package:ecommerce_app/providers/cart_provider.dart';
import 'package:ecommerce_app/screens/Cart/checkout.dart';
import 'package:ecommerce_app/screens/nav_bar.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      bottomNavigationBar:Checkout() ,
      // bottomSheet: Checkout(),
      backgroundColor: kcontentColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  padding: EdgeInsets.all(15),
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBar()));
                }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
                Text("My Cart",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                Container()
              ],
            ),
            ),
            Expanded(
              child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Padding(
                    padding: EdgeInsets.all(15),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                      ),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            height: 120,
                            width: 100,
                            decoration: BoxDecoration(
                              color: kcontentColor,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            padding: EdgeInsets.all(10),
                            child: Image.asset("assets/images/men.png"),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Shoes",style: TextStyle(
                                fontWeight: FontWeight.bold,fontSize: 16
                              ),
                              ),
                              SizedBox(height: 5),
                              Text("category",style: TextStyle(
                                fontWeight: FontWeight.bold,fontSize: 14,
                                color: Colors.grey.shade400
                              ),
                              ),
                              SizedBox(height: 10),
                              Text("price 200",style: TextStyle(
                                fontWeight: FontWeight.bold,fontSize: 14
                              ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    ),
                    Positioned(
                      top: 35,
                      right: 35,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        IconButton(onPressed: () {
                          
                        }, icon: Icon(Icons.delete,size: 25,color: Colors.red,),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey.shade200,
                              width: 2
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                iconSize: 18,
                                onPressed: () {
                              }, icon: Icon(Icons.remove)
                              ),
                              SizedBox(width: 5),
                              Text("2",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              ),
                              ),
                              SizedBox(width: 5),
                              IconButton(
                                iconSize: 18,
                                onPressed: () {
                              }, icon: Icon(Icons.add)
                              ),
                            ],
                          ),
                        )
                      ],
                    ))
                  ],
                );
              },
              )
            ),
            
          ],
        ) 
        ),
    );
  }
}
import 'dart:ui';

import 'package:ecommerce_app/screens/Home/Widgets/download_invoice.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Details"),
      ),
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
            children: [
              Text("View Order details",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 180,
                  decoration: BoxDecoration(
                    color:kcontentColor,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                      width: 2
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Order date",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                            Text("04-Oct-2020",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Order #",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                            Text("403-2440091-2831530",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Order total",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                            Text("Rs. 599 (1 item)",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),)
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(context: context, builder: (context) => DownloadInvoiceModal());
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Download Invoice",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                              Icon(Icons.arrow_forward_outlined,size: 24,)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              // shipment details
              Text("Shipment details",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold)),
              Container(
                height: 250,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey,
                    style: BorderStyle.solid,
                    width: 2
                  )
                ),
                child: Container(
                  height: 230,
                  margin: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                      width: 2
                      ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Shipped",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                        Text("21-oct-2022",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                        ListTile(
                          leading: Image.asset("assets/images/men.png",fit: BoxFit.cover,height: 185,width: 55,),
                          title: Column(
                            children: [
                              Text("The house polyster & cotton woven",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                              Text("Qty:1"),
                              Text("sold By: The house")
                            ],
                          ),
                          trailing: Text("599",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                        )
                      ],
                    ),
                  ),
                ),

              ),

              // payment information
              Text("Payment information",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold)),
              Container(
                height: 120,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(8),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                    style: BorderStyle.solid
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Payment Methods",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    Text("Visa ending in 5126"),
                    Text("Google Pay Balance"),
                  ],
                ),
              ),

              // address information
              Text("shipping Address",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold)),
              Container(
                height: 120,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(8),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                    style: BorderStyle.solid
                  ),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Niyaz Sheikh"),
                    Text("Ward no 10,Thana parihar Jagdhar"),
                    Text("Gram-jagdar, Post-jagdar"),
                    Text("Sitamarhi,Bihar 884xxx"),
                    Text("India")
                  ],
                ),
              ),
              Text("Order Summary",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold)),
              Container(
                height: 130,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                    style: BorderStyle.solid
                  ),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Items:"),
                        Text("Rs. 599.00")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Postage & Packing:"),
                        Text("Rs. 599.00")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Total before Tax:"),
                        Text("Rs. 599.00")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Total:"),
                        Text("Rs. 599.00")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Order Total:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        Text("Rs. 599.00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )),
    );
  }
}
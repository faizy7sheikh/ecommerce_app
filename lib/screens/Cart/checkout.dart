import 'package:ecommerce_app/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Checkout extends StatelessWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30)
        )
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 5
              ),
              filled: true,
              fillColor: kcontentColor,
              hintText: "Enter Discount Code",
              hintStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.grey
              ),
              suffixIcon: TextButton(onPressed: () {
                
              }, child: Text("Apply",style: TextStyle(color: kprimaryColor,fontSize: 20,fontWeight: FontWeight.bold),))
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Subtotal",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
                ),
              ),
              Text("\$300",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
                )
            ],
          ),
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
                ),
              ),
              Text("\$300",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
                )
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: kprimaryColor,
              minimumSize: Size(double.infinity, 55)
            ),
            onPressed: () {
            
          }, 
          child: Text("Checkout",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),)
          )
        ],
      ),
    );
  }
}
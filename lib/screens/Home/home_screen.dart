import 'package:ecommerce_app/screens/Home/Widgets/category.dart';
import 'package:ecommerce_app/screens/Home/Widgets/home_app_bar.dart';
import 'package:ecommerce_app/screens/Home/Widgets/image_slider.dart';
import 'package:ecommerce_app/screens/Home/Widgets/product_cart.dart';
import 'package:ecommerce_app/screens/Home/Widgets/search_bar.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../models/product_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlider = 1;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            //  for cusotm app bar
              CustomAppBar(openDrawer: () => _scaffoldKey.currentState?.openDrawer()),
              SizedBox(height: 20,),
              //  for search bar
              MySearchBar(),
              SizedBox(height: 20,),
              // banner
              ImageSlider(currentSlide: currentSlider,onChange: (values){
                setState(() {
                  currentSlider = values;
                });
              },),
              // category section
              SizedBox(height: 20,),
              Categories(),

              // product
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Special For You",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800
                  ),),
                  Text("See all",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black54),)
                ],
              ),

              // product list 
              GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.78,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20
              ), 
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductCard(product: products[index]);  
              },
              )
            ],
          ),
          ),
      ),
    );
  }
}


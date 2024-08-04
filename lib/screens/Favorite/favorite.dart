import 'package:ecommerce_app/screens/Home/home_screen.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kcontentColor,
        leading: IconButton(
                  padding: EdgeInsets.all(15),
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
        title: const Text(
          "Favorite",
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  width: 85,
                                  height: 85,
                                  decoration: BoxDecoration(
                                    color: kcontentColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Image.asset("assets/images/all/sweet.png"),
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Shoes",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      "category",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade400,
                                        fontSize: 16,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      "\$500",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        // for delete button
                        Positioned(
                          top: 30,
                          right: 35,
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _isFavorite = !_isFavorite;
                                  });
                                },
                                child: Icon(
                                  _isFavorite ? Icons.favorite_border : Icons.favorite,
                                  color:kprimaryColor,
                                  size: 25,
                                ),
                              ),
                              SizedBox(height: 20),
                              GestureDetector(
                                onTap: () {
                                  // add to cart
                                  final addToCart = SnackBar(
                                    backgroundColor: Colors.grey.shade600,
                                    content: Text("Item Added to Cart",style: TextStyle(fontSize: 16,color: Colors.greenAccent),));
                                    ScaffoldMessenger.of(context).showSnackBar(addToCart);
                                },
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: kcontentColor
                                  ),
                                  child: const Icon(
                                    Icons.add_shopping_cart_outlined,
                                    color:kprimaryColor,
                                    size: 25,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }
                )
            )
        ],
      ),
    );
  }
}

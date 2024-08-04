import 'package:ecommerce_app/screens/order/order_details.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerHeader(
            decoration: BoxDecoration(
              color: kprimaryColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: kcontentColor,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/profile3.png'), // Replace with your asset
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    'John Doe',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'johndoe@example.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.card_giftcard_rounded),
            title: Text('Orders'),
            onTap: () {
              // Navigate to Categories
              Navigator.push(context, MaterialPageRoute(builder: (context) => OrderDetails()));
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite_border),
            title: Text('Favourite'),
            onTap: () {
              // Navigate to Categories
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart_checkout_outlined),
            title: Text('Cart'),
            onTap: () {
              // Navigate to Categories
              Navigator.pop(context);
            },
          ),
          Divider(
            color: Colors.grey.shade600,
            thickness: 1
          ),
          ListTile(
            leading: Icon(Icons.wallet_outlined),
            title: Text('Wallet'),
            onTap: () {
              // Navigate to Categories
              Navigator.pop(context);
            },
          ),
          // ListTile(
          //   leading: Icon(Icons.category),
          //   title: Text('Categories'),
          //   onTap: () {
          //     // Navigate to Categories
          //     Navigator.pop(context);
          //   },
          // ),
          ListTile(
            leading: Icon(Icons.person_outline),
            title: Text('Profile'),
            onTap: () {
              // Navigate to Categories
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.place_outlined),
            title: Text('Address'),
            onTap: () {
              // Navigate to Orders
              Navigator.pop(context);
            },
          ),
          Divider(
            color: Colors.grey.shade600,
            thickness: 1
          ),
           ListTile(
            leading: Icon(Icons.help_outlined),
            title: Text('Help'),
            onTap: () {
              // Navigate to Cart
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              // Navigate to Settings
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () {
              // Handle logout
              Navigator.pop(context);
            },
          ),
      ],
    );
  }
}
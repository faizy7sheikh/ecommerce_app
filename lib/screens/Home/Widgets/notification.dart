import 'package:ecommerce_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NotificationApp extends StatefulWidget {
  const NotificationApp({Key? key}) : super(key: key);

  @override
  State<NotificationApp> createState() => _NotificationState();
}

class _NotificationState extends State<NotificationApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        backgroundColor: kcontentColor,
        centerTitle: true,
        title: Text("Notification",style: TextStyle(color: Colors.black),),
      ),
      body: ListView.separated(
        
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kcontentColor
              ),
              child: Icon(Icons.discount_outlined),
            ),
            title: Text("Discount"),
            subtitle: Text("use below code for discount"),
          );
        },
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey.shade600,
          thickness: 1,
        ),
        )
    );
  }
}
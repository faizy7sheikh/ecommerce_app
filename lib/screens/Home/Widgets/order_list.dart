import 'package:ecommerce_app/screens/Home/Widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class OderList extends StatefulWidget {
  const OderList({Key? key}) : super(key: key);

  @override
  State<OderList> createState() => _OderListState();
}

class _OderListState extends State<OderList> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              MySearchBar(),
              // list of product
              ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Image.asset("assets/images/beauty.png"),
                    ),
                    title: Text("PiBox india-Usb 3.0 to 2.5"),
                    subtitle: Text("Order on 10-Nov-2021"),
                    trailing: Icon(Icons.arrow_forward_outlined),
                  );
                }, 
                separatorBuilder: (context, index) {
                  return Divider();
                }, 
                itemCount: 5)
            ],
          )),
      ),
    );
  }
}
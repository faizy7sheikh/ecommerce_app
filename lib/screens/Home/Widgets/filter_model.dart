import 'package:ecommerce_app/utils/colors.dart';
import 'package:flutter/material.dart';

class FilterModal extends StatefulWidget {
  @override
  State<FilterModal> createState() => _FilterModalState();
}

class _FilterModalState extends State<FilterModal> {
  @override
  Widget build(BuildContext context) {

      double _lowerValue = 0;
      double _upperValue = 50000;

    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Text(
                  'Filter',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Clear All',
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
            ],
          ),
          Divider(
            thickness: 5,
            color: kcontentColor,
          ),
          SizedBox(height: 16.0),
          // Add filter options here
          ListTile(
            leading: Icon(Icons.category),
            title: Text('Category',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
            subtitle: Column(
              children: [
                Row(
                  children: [
                    Chip(label: Text("shoes")),
                    SizedBox(width: 4),
                    Chip(label: Text("Jacket")),
                    SizedBox(width: 4),
                    Chip(label: Text("T-shirt")),
                    SizedBox(width: 4),
                    Chip(label: Text("Jacket")),
                  ],
                ),
                 Row(
                  children: [
                    Chip(label: Text("electronics")),
                     SizedBox(width: 4),
                    Chip(label: Text("Jewelry")),
                     SizedBox(width: 5),
                    Chip(label: Text("Men's"))
                  ],
                ),
              ],
            ),
            onTap: () {
              // Handle category filter
            },
          ),
          ListTile(
            leading: Icon(Icons.price_change),
            title: Text('Price Range',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
            subtitle:RangeSlider(
              activeColor: kprimaryColor,
              inactiveColor: kcontentColor,
                values: RangeValues(_lowerValue, _upperValue),
                min: 0,
                max: 50000,
                divisions: 500,
                labels: RangeLabels(
                  '\$${_lowerValue.toStringAsFixed(0)}',
                  '\$${_upperValue.toStringAsFixed(0)}',
                ),
                onChanged: (RangeValues values) {
                  setState(() {
                    _lowerValue = values.start;
                  _upperValue = values.end;
                  });
                },
              ),
            onTap: () {
              // Handle price range filter
            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Ratings',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
            onTap: () {
              // Handle ratings filter
            },
          ),
          ListTile(
            leading: Icon(Icons.new_label_outlined),
            title: Text('Latest Item',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
            onTap: () {
              // Handle clearing filters
            },
          )
        ],
      ),
    );
  }
}
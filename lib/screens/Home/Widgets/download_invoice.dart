import 'package:ecommerce_app/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DownloadInvoiceModal extends StatefulWidget {
  const DownloadInvoiceModal({Key? key}) : super(key: key);

  @override
  State<DownloadInvoiceModal> createState() => _DownloadInvoiceModalState();
}

class _DownloadInvoiceModalState extends State<DownloadInvoiceModal> {
  String? _selectedGender;

  void _handleGenderChange(String? value) {
    setState(() {
      _selectedGender = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: kcontentColor
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(35),
            
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey.shade400
              )
            ),
            child: Column(
              children: [
                ListTile(
                    title: Text('Invoice'),
                    leading: Radio<String>(
                      value: 'invoice',
                      groupValue: _selectedGender,
                      onChanged: _handleGenderChange,
                    ),
                  ),
                  ListTile(
                    focusColor: kprimaryColor,
                    selectedTileColor: Colors.red,
                    tileColor: kprimaryColor,
                    title: Text('Warranty / Pslip'),
                    leading: Radio<String>(
                      value: 'warranty',
                      groupValue: _selectedGender,
                      onChanged: _handleGenderChange,
                    ),
                  ),
              ],
            ),
          ),
          Text("The warranty document contains IMEI number for wireless products",textAlign: TextAlign.center,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: kprimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))
              )
            ),
            onPressed: () {
            
          }, child: Text("Download documents",style: TextStyle(fontSize: 16),))
        ],
      ),
    );
  }
}
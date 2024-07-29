import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyImageSlider extends StatelessWidget {
  final Function (int) onChange;
  final String image;
  const MyImageSlider({Key? key,required this.image,required this.onChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: PageView.builder(
        onPageChanged: onChange,
        itemBuilder: (context, index) {
        return Hero(
          tag: image,
          child: Image.asset(image));
      },),
    );
  }
}
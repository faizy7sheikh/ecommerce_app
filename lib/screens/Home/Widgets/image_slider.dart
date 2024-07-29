import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ImageSlider extends StatefulWidget {
  final Function (int) onChange;
  final int currentSlide;
  const ImageSlider({Key? key,required this.currentSlide,required this.onChange}) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 220,
          width: double.infinity,
          child: ClipRect(
            child: PageView(
              onPageChanged: widget.onChange,
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              physics: ClampingScrollPhysics(),
              children: [
                Image.asset("assets/images/slider.jpg",fit: BoxFit.cover,),
                Image.asset("assets/images/slider3.png",fit: BoxFit.cover,),
                Image.asset("assets/images/image1.png",fit: BoxFit.cover,)
              ],
            ),
          ),
        ),
        Positioned.fill(
          bottom: 10,
          child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: 
              List.generate(5, (index) => AnimatedContainer(
                duration: Duration(
                 microseconds: 300
              ),
              width: widget.currentSlide==index ? 15 :8,height: 8,margin: EdgeInsets.only(right: 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: widget.currentSlide == index ? Colors.black:Colors.transparent,
                border: Border.all(
                  color: Colors.black
                )
              ),)
              )
          ),
        ))
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class MainSlider extends StatelessWidget {
  const MainSlider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/sliderImages/imageSlider1.jpg'),
          AssetImage('assets/images/sliderImages/imageSlider2.jpg'),
          AssetImage('assets/images/sliderImages/imageSlider3.jpg'),
          AssetImage('assets/images/sliderImages/imageSlider4.jpg'),
          AssetImage('assets/images/sliderImages/imageSlider5.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 2000),
        dotSize: 0.0,
        indicatorBgPadding: 0.0,
        overlayShadowSize: 0.5,
        overlayShadowColors: Colors.black,
        overlayShadow: true,
        
      ),
    );
  }
}
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomSliders extends StatelessWidget {
  const CustomSliders({super.key, required this.items});
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: items.length,
      itemBuilder: (context, index, realIndex) =>
          Image.asset(items[index], fit: BoxFit.fill),
      options: CarouselOptions(
        height: 190,
        aspectRatio: 383/222,
        viewportFraction: 0.7,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 6),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

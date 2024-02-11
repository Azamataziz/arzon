import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeCarousel extends StatefulWidget {
  @override
  State<HomeCarousel> createState() => _HomeCarouselState();
}

class _HomeCarouselState extends State<HomeCarousel> {
  final imagePath = [
    'assets/banners/banner1.jpg',
    'assets/banners/banner2.jpg',
    'assets/banners/banner4.jpg',
    'assets/banners/banner3.jpg',
  ];

  int activIndicator = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
        ),
        CarouselSlider.builder(
          options: CarouselOptions(
              height: 200.0,
              viewportFraction: 1,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 7),
              onPageChanged: (i, reason) {
                setState(
                  () {
                    activIndicator = i;
                  },
                );
              }),
          itemCount: imagePath.length,
          itemBuilder: (ctx, i, currentIndex) {
            final image = imagePath[i];
            return Container(
                margin: const EdgeInsets.only(top: 14, left: 8, right: 8),
                width: 400,
                height: 200,
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                ));
          },
        ),
        const SizedBox(
          height: 12,
        ),
        AnimatedSmoothIndicator(
          activeIndex: activIndicator,
          count: imagePath.length,
          effect: const ExpandingDotsEffect(
              dotHeight: 10,
              dotWidth: 10,
              activeDotColor: Colors.blue,
              dotColor: Color.fromARGB(110, 33, 149, 243)),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../widgets/search_bar.dart';
import '../widgets/grid_items.dart';
import '../widgets/home_slider.dart';

class HomeScreen extends StatelessWidget {
  final imagePath = [
    'assets/banner2.jpg',
    'assets/banner4.jpg',
    'assets/banner3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            SearchBaar(),
            HomeCarousel(),
            const SizedBox(height: 12),
            GridItems(),
          ]),
        ),
      ),
    );
  }
}

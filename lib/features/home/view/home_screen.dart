import 'package:flutter/material.dart';
import '../../../core/repositories/all_items_repo.dart';
import '../widgets/widgets.dart';

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
      floatingActionButton: FloatingActionButton(onPressed: () {
        AllItemsRepo().getAllItemsList();
      }, child: Icon(Icons.add),),
    );
  }
}

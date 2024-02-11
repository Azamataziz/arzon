import 'package:Arzon/core/repositories/models/item_repo_model.dart';
import 'package:flutter/material.dart';
import '../../../core/repositories/all_items_repo.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    _loadAllProducts();
    super.initState();
  }

  List<ItemModel>? _products;

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
            (_products == null)
                ? CircularProgressIndicator()
                : GridItems(_products),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AllItemsRepo().getAllItemsList();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Future<void> _loadAllProducts() async {
    _products = await AllItemsRepo().getAllItemsList();
    setState(() {});
  }
}

import 'package:Arzon/core/repositories/all_items_repo.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../categories/categories.dart';
import '../favorite/favorite_screen.dart';
import '../home/home.dart';

class TabScreen extends StatefulWidget {
  static const routeName = '/tab';

  @override
  State<TabScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TabScreen> {

 

  final _pages = [
    HomeScreen(),
    CategoriesScreen(),
    FavoriteScreen(),
  ];

  int _selectedPage = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
            onTap: _selectPage,
            unselectedItemColor: Colors.black26,
            selectedItemColor: Colors.orange,
            currentIndex: _selectedPage,
            backgroundColor: Theme.of(context).primaryColor,
            items: const [
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.house), label: 'Home'),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.book), label: 'Categories'),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.heart), label: 'Favorite'),
            ]));
  }
}

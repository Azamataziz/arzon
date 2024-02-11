import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchBaar extends StatefulWidget {
  @override
  State<SearchBaar> createState() => _SearchBaarState();
}

class _SearchBaarState extends State<SearchBaar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 52,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: const Color.fromARGB(255, 224, 224, 224),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          color: Colors.white),
      child: const Row(
        children: [
          FaIcon(
            FontAwesomeIcons.searchengin,
            color: Colors.black26,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Search....',
            style: TextStyle(color: Colors.black26),
          )
        ],
      ),
    );
  }
}

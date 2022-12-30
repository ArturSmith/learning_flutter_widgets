import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/patterns/button_pattern.dart';
import 'package:flutter_module6_practice6/patterns/categories_page_pattern.dart';

class ScrollsCategoriesPage extends StatelessWidget {
  ScrollsCategoriesPage({super.key});

  List<Widget> listOfButtons = [
    ButtonPattern(
      name: "SingleChildScrollView",
      route: "/SingleChildSCrollView",
    ),
    ButtonPattern(
      name: "ListView",
      route: "/ListView",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CateroriesPagePattern(
        title: 'Scrolls', listOfButtons: listOfButtons);
  }
}
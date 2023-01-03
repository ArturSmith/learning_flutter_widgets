import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/patterns/button_pattern.dart';
import 'package:flutter_module6_practice6/patterns/categories_page_pattern.dart';

class ScrollsCategoriesPage extends StatelessWidget {
  ScrollsCategoriesPage({super.key});

  List<Widget> listOfButtons = [
    ButtonPattern(
      name: "SingleChildScrollView",
      route: "SingleChildSCrollView",
    ),
    ButtonPattern(
      name: "ListView",
      route: "ListView",
    ),
    ButtonPattern(
      name: "ListWheelScrollView",
      route: "ListWheelScrollView",
    ),
    ButtonPattern(
      name: "GridView",
      route: "GridView",
    ),
    ButtonPattern(
      name: "CustomScrollView",
      route: "CustomScrollView",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CateroriesPagePattern(
      title: 'Scrolls',
      listOFButtons: listOfButtons,
    );
  }
}

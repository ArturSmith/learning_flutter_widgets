import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/patterns/categories_page_pattern.dart';

import '../../patterns/button_pattern.dart';

class CateroriesPage extends StatelessWidget {
  CateroriesPage({super.key});
  final List<Widget> listOfButtons = [ButtonPattern(name: 'Scrolls', route: '/Scrolls',)];
  @override
  Widget build(BuildContext context) {
    return CateroriesPagePattern(
        title: 'Categories of widgets', listOfButtons: listOfButtons);
  }
}

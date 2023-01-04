import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/patterns/button_pattern.dart';
import 'package:flutter_module6_practice6/patterns/categories_page_pattern.dart';

class LayoutWidgetsCategoryPage extends StatelessWidget {
  LayoutWidgetsCategoryPage({super.key});

  final List<Widget> butoons = [ButtonPattern(name: "LayoutBuilder", route: "LayoutBuilder")];

  @override
  Widget build(BuildContext context) {
    return CateroriesPagePattern(
        title: 'Layout widgets', listOFButtons: butoons);
  }
}

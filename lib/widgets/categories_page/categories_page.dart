// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_module6_practice6/patterns/categories_page_pattern.dart';
import 'package:flutter_module6_practice6/widgets/layout_widgets/layout_widgets_categories_page.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/scrolls_categories_page.dart';
import '../../patterns/button_pattern.dart';

class CateroriesPage extends StatelessWidget {
  CateroriesPage({super.key});
  static const routeName = '/CateroriesPage';
  final List<Widget> listOfButtons = [
    ButtonPattern(
      name: 'Scrolls',
      route: 'Scrolls',
      page: ScrollsCategoriesPage(),
    ),
    ButtonPattern(
      name: 'Layout',
      route: 'Layout',
      page: LayoutWidgetsCategoryPage(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return CateroriesPagePattern(
      title: 'Categories of widgets',
      listOFButtons: listOfButtons,
    );
  }
}

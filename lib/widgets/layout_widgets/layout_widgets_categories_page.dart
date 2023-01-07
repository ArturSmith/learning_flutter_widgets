// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_module6_practice6/patterns/button_pattern.dart';
import 'package:flutter_module6_practice6/patterns/categories_page_pattern.dart';
import 'package:flutter_module6_practice6/widgets/layout_widgets/layout_builder/layout_builder_main.dart';

class LayoutWidgetsCategoryPage extends StatelessWidget {
  LayoutWidgetsCategoryPage({super.key});
  static const routeName = '/LayoutWidgetsCategoryPage';

  final List<Widget> butoons = [
    ButtonPattern(
      name: "LayoutBuilder",
      route: "LayoutBuilder",
      page: const LayoutBuilderWidget(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return CateroriesPagePattern(
        title: 'Layout widgets', listOFButtons: butoons);
  }
}

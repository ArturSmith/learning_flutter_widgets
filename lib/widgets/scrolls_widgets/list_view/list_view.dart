import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/patterns/widget_description_page_pattern.dart';

class ListViewWidget extends StatelessWidget {
  ListViewWidget({super.key});

  List<Widget> actions = [];

  final listViewController = ScrollController(initialScrollOffset: 0);

  @override
  Widget build(BuildContext context) {
    return WidgetDescriptionPagePattern(
      title: 'List view',
      actions: actions,
      body: const Center(),
      information: 'List View',
    );
  }
}

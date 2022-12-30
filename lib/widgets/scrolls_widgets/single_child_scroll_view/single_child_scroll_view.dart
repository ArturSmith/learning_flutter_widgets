import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/patterns/widget_description_page_pattern.dart';

class SingleChildScrollViewWidget extends StatelessWidget {
  SingleChildScrollViewWidget({super.key});
  final List<Widget> actions = [];
  @override
  Widget build(BuildContext context) {
    return WidgetDescriptionPagePattern(
      title: "Single child scroll view",
      body: const Center(),
      actions: actions,
      information: '',
    );
  }
}

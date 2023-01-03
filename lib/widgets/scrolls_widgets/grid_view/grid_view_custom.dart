import 'package:flutter/material.dart';

class GridViewCustom extends StatelessWidget {
  const GridViewCustom({super.key, required this.listOfWidgets});
  final List<Widget> listOfWidgets;
  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      childrenDelegate: SliverChildBuilderDelegate(((context, index) {
        return listOfWidgets[index];
      }), childCount: listOfWidgets.length),
    );
  }
}

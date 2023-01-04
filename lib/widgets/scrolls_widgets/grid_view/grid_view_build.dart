import 'package:flutter/material.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({super.key, required this.listOfWidgets});

  final List<Widget> listOfWidgets;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          // mainAxisSpacing: 1,
          // crossAxisSpacing: 1,
          // childAspectRatio: 1,
          mainAxisExtent: 150,
        ),
        itemCount: listOfWidgets.length,
        itemBuilder: ((context, index) {
          return listOfWidgets[index];
        }));
  }
}
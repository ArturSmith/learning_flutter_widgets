import 'package:flutter/material.dart';

class GridViewExtent extends StatelessWidget {
  const GridViewExtent({super.key, required this.listOfWidgets});
  final List<Widget> listOfWidgets;

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      // scrollDirection: ,
      // reverse: ,
      // controller: ,
      // primary: ,
      // physics: ,
      // shrinkWrap: true,
      // padding: ,
      maxCrossAxisExtent: 100,
      // mainAxisSpacing: 10,
      // crossAxisSpacing: 10,
      // childAspectRatio: 10,
      // addAutomaticKeepAlives: ,
      // addRepaintBoundaries: ,
      // addSemanticIndexes:,
      // cacheExtent:,
      children: listOfWidgets,
      // semanticChildCount:,
      // dragStartBehavior: ,
      // keyboardDismissBehavior: ,
      // restorationId: ,
      // clipBehavior: ,
    );
  }
}

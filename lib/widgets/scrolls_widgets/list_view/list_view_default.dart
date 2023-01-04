import 'package:flutter/material.dart';

class ListViewDefault extends StatelessWidget {
   ListViewDefault({super.key, required this.Cards});
  final List<Widget> Cards;
  final cont = ScrollController();
  @override
  Widget build(BuildContext context) {

    return ListView(
      controller: cont,
      children: Cards,
    );
  }
}

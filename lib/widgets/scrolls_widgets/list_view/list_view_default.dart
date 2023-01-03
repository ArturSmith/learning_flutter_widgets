import 'package:flutter/material.dart';

class ListViewDefault extends StatelessWidget {
  const ListViewDefault({super.key, required this.Cards});
  final List<Widget> Cards;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: Cards,
    );
  }
}

// Flutter imports:
import 'package:flutter/material.dart';

class ListViewSeparated extends StatelessWidget {
  const ListViewSeparated({super.key, required this.Cards});
  final List<Widget> Cards;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: ((context, index) {
          return Cards[index];
        }),
        separatorBuilder: ((context, index) => const Divider()),
        itemCount: Cards.length);
  }
}

import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  ListViewBuilder({super.key, required this.Cards});
  final List<Widget> Cards;
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        controller: scrollController,
        itemBuilder: ((context, index) {
          return Cards[index];
        }));
  }
}

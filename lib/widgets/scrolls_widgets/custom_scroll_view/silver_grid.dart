import 'package:flutter/material.dart';

class SilverGridWidget extends StatelessWidget {
  const SilverGridWidget({super.key});
  List<Widget> cards(int count) {
    List<Widget> cards = [];

    for (var i = 0; i < count; i++) {
      cards.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            height: 30,
            color: const Color.fromARGB(255, 173, 173, 173),
            child: Center(child: Text('$i')),
          ),
        ),
      );
    }
    return cards;
  }

  @override
  Widget build(BuildContext context) {
    return 
    SliverGrid.count(
      crossAxisCount: 2,
      children: cards(20),
    );

  }
}

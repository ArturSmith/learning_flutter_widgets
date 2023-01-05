import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/patterns/single_page_pattern.dart';

class LayoutBuilderWidget extends StatelessWidget {
  const LayoutBuilderWidget({super.key});
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
    return SinglePagePattern(
      title: const Text('Layout builder'),
      bottomSheetBody: const Text(
          "Данный виджет позволяет управлять constrains, с его помощью можно задавать условие изменения constrains и подстраивать под них своё приложение. В данном примере при изменении положении девайся с вертикального на горизонтальное, ListView заменяется на GridView. "),
      body: LayoutBuilder(
        builder: (BuildContext, BoxConstraints) {
          final _constrains = BoxConstraints.maxWidth;

          if (BoxConstraints.maxWidth > 600) {
            return GridView.count(
              crossAxisCount: 3,
              children: cards(100),
            );
          } else {
            return ListView(
              children: cards(100),
            );
          }
        },
      ),
      actions: [],
    );
  }
}

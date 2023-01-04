import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/patterns/app_colors.dart';

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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const Text("Layout builder"),
            centerTitle: true,
            backgroundColor: AppColors().mainColor),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.info),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
      ),
    );
  }
}

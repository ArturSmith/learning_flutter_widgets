import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/patterns/app_colors.dart';
import 'package:flutter_module6_practice6/patterns/widget_description_page_pattern.dart';

class SingleChildScrollViewWidget extends StatelessWidget {
  SingleChildScrollViewWidget({super.key});
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
          backgroundColor: AppColors().mainColor,
          title: const Text("SingleChildScrollView"),
          centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
              child: Column(
            children: cards(30),
          )),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            showModalBottomSheet(
                context: context,
                builder: ((context) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          const Text("Information"),
                          Container(
                            height: 1,
                            width: double.infinity,
                            color: Colors.black,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                              child: Information().information),
                        ],
                      ),
                    ),
                  );
                }));
          }),
          backgroundColor: AppColors().mainColor,
          child: const Icon(Icons.info),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

class Information {
  Widget information = const Text("");
}

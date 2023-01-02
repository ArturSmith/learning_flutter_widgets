import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/patterns/app_colors.dart';

class WidgetDescriptionPagePattern extends StatelessWidget {
  const WidgetDescriptionPagePattern(
      {super.key,
      required this.title,
      required this.body,
      required this.actions,
      required this.information});

  final String title;
  final Widget body;
  final List<Widget> actions;
  final Widget information;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors().mainColor,
          title: Text(title),
          centerTitle: true,
          actions: actions,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors().mainColor,
          onPressed: () {
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
                          SingleChildScrollView(child: information),
                        ],
                      ),
                    ),
                  );
                }));
          },
          child: const Icon(Icons.info),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: body,
      ),
    );
  }
}

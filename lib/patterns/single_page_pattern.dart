import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/patterns/app_colors.dart';

class SinglePagePattern extends StatefulWidget {
  const SinglePagePattern(
      {super.key,
      required this.title,
      required this.bottomSheetBody,
      required this.body,
      required this.actions});
  final Widget title;
  final Widget bottomSheetBody;
  final Widget body;
  final List<Widget> actions;
  @override
  State<SinglePagePattern> createState() => _SinglePagePatternState();
}

class _SinglePagePatternState extends State<SinglePagePattern> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors().mainColor,
          actions: widget.actions,
          title: widget.title,
          centerTitle: true,
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
                          SingleChildScrollView(child: widget.bottomSheetBody),
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
        body: widget.body,
      ),
    );
  }
}

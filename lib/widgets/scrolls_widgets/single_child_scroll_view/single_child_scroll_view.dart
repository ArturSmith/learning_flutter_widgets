import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/patterns/widget_description_page_pattern.dart';

class SingleChildScrollViewWidget extends StatelessWidget {
  SingleChildScrollViewWidget({super.key});
  final List<Widget> actions = [];
  @override
  Widget build(BuildContext context) {
    return WidgetDescriptionPagePattern(
      title: "Single child scroll view",
      body: SingleChildScrollViewBody(),
      actions: actions,
      information: Information().infoBody,
    );
  }
}

class SingleChildScrollViewBody extends StatelessWidget {
  SingleChildScrollViewBody({super.key});

  // ignore: non_constant_identifier_names, prefer_function_declarations_over_variables
  final Cards = (int count) => List<Widget>.generate(count, (index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            height: 30,
            color: const Color.fromARGB(255, 173, 173, 173),
            child: Center(child: Text('$index')),
          ),
        );
      });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: Cards(100),
        ),
      ),
    );
  }
}

class Information {
  // ignore: prefer_const_literals_to_create_immutables
  final Widget infoBody = Column(children: [
    const Text(
        'Single Child Scroll View принимает один обьект и придает ему свойсто ' +
            'прокручиваемости если он не вмешается в экран девайса.'),
  ]);
}

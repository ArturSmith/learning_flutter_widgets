import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/patterns/widget_description_page_pattern.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/list_view/list_view_builder.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/list_view/list_view_default.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/list_view/list_view_separated.dart';

import '../custom_scroll_view/custom_scroll_view_information.dart';

class ListViewWidget extends StatelessWidget {
  ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetDescriptionPagePattern(
      actions: _Actions().actions,
      bottomNavigationBarItems:
          _BottomNavigationBarItems().bottomNavigationBarItems,
      bodyWidgetOptions: _BodyWidgetOptions().bodyWidgetOptions(),
      bottomSheetWidgetOptions:
          BottomSheetWidgetOptions().bottomSheetWidgetOptions,
      titlesList: _TitlesList().titlesList,
      bodyWhenBottomBarIsNotValid: _BodyWhenBottomBarIsNotValid().body,
      informationWhenBottomBarIsNotValid:
          InformationWhenBottomBarIsNotValid().information,
      title: const Text("List view"),
    );
  }
}

class _Actions {
  final List<Widget> actions = [];
}

class _BottomNavigationBarItems {
  final List<BottomNavigationBarItem> bottomNavigationBarItems = const [
    BottomNavigationBarItem(
        icon: Icon(Icons.first_page), label: "ListView default"),
    BottomNavigationBarItem(
        icon: Icon(Icons.first_page), label: "ListView builder"),
    BottomNavigationBarItem(
        icon: Icon(Icons.first_page), label: "ListView sepparated"),
  ];
}

class _BodyWidgetOptions {
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

  List<Widget> bodyWidgetOptions() {
    final List<Widget> _finalList = [
      ListViewDefault(Cards: cards(100)),
      ListViewBuilder(Cards: cards(100)),
      ListViewSeparated(Cards: cards(100)),
    ];
    return _finalList;
  }
}

class _TitlesList {
  final List<String> titlesList = [
    "ListView default",
    "ListView builder",
    "ListView sepparated"
  ];
}

class _BodyWhenBottomBarIsNotValid {
  final Widget body = Center();
}
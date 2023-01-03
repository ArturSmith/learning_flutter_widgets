import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/patterns/widget_description_page_pattern.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/grid_view/grid_view_build.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/grid_view/grid_view_count.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/grid_view/grid_view_custom.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/grid_view/grid_view_extent.dart';

import '../custom_scroll_view/custom_scroll_view_information.dart';

class GridViewWidget extends StatelessWidget {
  GridViewWidget({super.key});

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
      title: const Text("Grid view"),
    );
  }
}

class _Actions {
  final List<Widget> actions = [];
}

class _BottomNavigationBarItems {
  final List<BottomNavigationBarItem> bottomNavigationBarItems = const [
    BottomNavigationBarItem(
        icon: Icon(Icons.near_me_outlined), label: "GridView count"),
    BottomNavigationBarItem(
        icon: Icon(Icons.near_me_outlined), label: "GridView build"),
    BottomNavigationBarItem(
        icon: Icon(Icons.near_me_outlined), label: "GridView extent"),
    BottomNavigationBarItem(
        icon: Icon(Icons.near_me_outlined), label: "GridView custom"),
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
      GridViewCount(listOfWidgets: cards(100)),
      GridViewBuilder(listOfWidgets: cards(100)),
      GridViewExtent(listOfWidgets: cards(100)),
      GridViewCustom(listOfWidgets: cards(100)),
    ];
    return _finalList;
  }
}

class _TitlesList {
  final List<String> titlesList = [
    "GridView count",
    "GridView build",
    "GridView extent",
    "GridView custom"
  ];
}

class _BodyWhenBottomBarIsNotValid {
  final Widget body = Center();
}

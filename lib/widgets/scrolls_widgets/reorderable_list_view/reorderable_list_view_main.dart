import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/patterns/widget_description_page_pattern.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/reorderable_list_view/reorderable_list_view_example.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/reorderable_list_view/reorderable_list_view_information.dart';

class ReorderableListViewWidget extends StatelessWidget {
  const ReorderableListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetDescriptionPagePattern(
        actions: _Actions().actions,
        bottomNavigationBarItems:
            _BottomNavigationBarItems().bottomNavigationBarItems,
        bodyWidgetOptions: _BodyWidgetOptions().bodyWidgetOptions,
        bottomSheetWidgetOptions:
            BottomSheetWidgetOptions().bottomSheetWidgetOptions,
        titlesList: _TitlesList().titlesList,
        informationWhenBottomBarIsNotValid: InformationWhenBottomBarIsNotValid()
            .informationWhenBottomBarIsNotValid,
        bodyWhenBottomBarIsNotValid: _BodyWhenBottomBarIsNotValid()
            .bobodyWhenBottomBarIsNotValiddyWidgetOptions,
        title: const Text('Reorderable List View '));
  }
}

class _Actions {
  final List<Widget> actions = [];
}

class _BottomNavigationBarItems {
  final List<BottomNavigationBarItem> bottomNavigationBarItems = [];
}

class _BodyWidgetOptions {
  final List<Widget> bodyWidgetOptions = [];
}

class _BodyWhenBottomBarIsNotValid {
  final Widget bobodyWhenBottomBarIsNotValiddyWidgetOptions =
      const ReorderableExample();
}

class _TitlesList {
  final List<String> titlesList = [];
}

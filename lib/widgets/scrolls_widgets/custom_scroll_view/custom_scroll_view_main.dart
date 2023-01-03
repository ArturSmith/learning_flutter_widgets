import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/patterns/widget_description_page_pattern.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/custom_scroll_view/custom_scroll_view_information.dart';

class CustomScrollViewWidget extends StatelessWidget {
  const CustomScrollViewWidget({super.key});

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
      bodyWhenBottomBarIsNotValid: _BodyWhenBottomBarInNotValid().body,
      informationWhenBottomBarIsNotValid:
          InformationWhenBottomBarIsNotValid().information,
      title: const Text("Custom scroll view"),
    );
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



class _TitlesList {
  final List<String> titlesList = [];
}

class _BodyWhenBottomBarInNotValid {
  final Widget body = const Center();
}


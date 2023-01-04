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
          _BottomSheetWidgetOptions().list,
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
  final List<BottomNavigationBarItem> bottomNavigationBarItems = [
    const BottomNavigationBarItem(icon: Icon(Icons.info_outline_rounded), label: "Custom"),
    // const BottomNavigationBarItem(icon: Icon(Icons.info_outline_rounded), label: "Custom"),
  ];
}

class _BodyWidgetOptions {
  final List<Widget> bodyWidgetOptions = [Center(), Center()];
}

class _BottomSheetWidgetOptions {
  final List<Widget> list = [
    const Text(''),
    const Text(''),
  ];
}

class _TitlesList {
  final List<String> titlesList = ['Custom', 'Custom'];
}

class _BodyWhenBottomBarInNotValid {
  final Widget body = Center();
}

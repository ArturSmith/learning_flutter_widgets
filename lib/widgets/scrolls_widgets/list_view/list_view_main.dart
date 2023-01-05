import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/patterns/multi_page_pattern.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/list_view/list_view_builder.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/list_view/list_view_default.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/list_view/list_view_information.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/list_view/list_view_separated.dart';

class ListViewWidget extends StatelessWidget {
  ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetDescriptionPagePattern(
      actions: _Actions().actions,
      bottomNavigationBarItems:
          _BottomNavigationBarItems().bottomNavigationBarItems,
      bodyWidgetOptions: _BodyWidgetOptions().bodyWidgetOptions(),
      bottomSheetWidgetOptions: _BottomSheetWidgetOptions().list,
      titlesList: _TitlesList().titlesList,
      bodyWhenBottomBarIsNotValid: _BodyWhenBottomBarIsNotValid().body,
      informationWhenBottomBarIsNotValid:
          InformationWhenBottomBarIsNotValidListView().information,
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
        icon: Icon(Icons.info_outline_rounded), label: "ListView default"),
    BottomNavigationBarItem(
        icon: Icon(Icons.info_outline_rounded), label: "ListView builder"),
    BottomNavigationBarItem(
        icon: Icon(Icons.info_outline_rounded), label: "ListView sepparated"),
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

class _BottomSheetWidgetOptions {
  final List<Widget> list = [
    const Text(
        'ListView дефолтный конструктор просто принимает массив объектов и придает им свойство прокручиваемости. Рекомендуется применять к небольшим спискам виджетов'),
    const Text(
        'ListView.builder рекомендуется использовать для больших или бесконечных списков, его особенность в том что он выгружает только те объекты которые действительно видны на экране и уничтожает другие при прокрутке. Удаление объектов и сохранение их состояния можно контралировать с помощью mixin AutomaticKeepAliveClientMixin (подробнее читать в документации)'),
    const Text(
        'ListView.separated работает по тому же принципу что и ListView.builder, но так же позволяет вставлять между объектами основного списка, другой виджет. В данном примере между карточками вставлен виджет Divider()'),
  ];
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

// Flutter imports:
import 'package:flutter/material.dart';

class InformationWhenBottomBarIsNotValidListView {
  final Widget information = const Text("Данный виджет можно реализовать несколькими конструкторами. Смотреть info ");
}


class _BottomSheetWidgetOptions {
  final List<Widget> bottomSheetWidgetOptions = const [
    Text("ListView default"),
    Text("ListView builder"),
    Text("ListView sepparated"),
  ];
}

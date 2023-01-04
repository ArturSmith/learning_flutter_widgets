import 'package:flutter/material.dart';

class InformationWhenBottomBarIsNotValid {
  final Widget information = const Text("Данный виджет отображает список прокручиваемых объектов в виде плиток. Можно настраивать напраление прокрутки, количество столбцов, размер отображаемых карточек и тд. Данный виджет можно реализовать несколькими конструкторами. См далее...");
}


class BottomSheetWidgetOptions {
  final List<Widget> bottomSheetWidgetOptions = const [
    Text("GridView count"),
    Text("GridView build"),
    Text("GridView extent"),
    Text("GridView custom"),
  ];
}
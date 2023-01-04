import 'package:flutter/material.dart';

class BottomSheetWidgetOptions {
  final List<Widget> bottomSheetWidgetOptions = [];
}

class InformationWhenBottomBarIsNotValid {
  final Widget information = Column(
    children: const [
      Text('Данный виджет принимает массив из делегатов и прокручивает их как один сплошной массив виджетов. Подробнее про делегаты можно почитать в отдельном разделе делегатов.'),
      SizedBox(
        height: 20,
      ),
      Text('')
    ],
  );
}

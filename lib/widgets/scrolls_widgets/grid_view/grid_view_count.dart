import 'package:flutter/material.dart';

class GridViewCount extends StatelessWidget {
  const GridViewCount({super.key, required this.listOfWidgets});
  final List<Widget> listOfWidgets;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, // количество столбцов
      scrollDirection: Axis.vertical, // направление скролла
      reverse: false, // скролл с конца
      // controller,                          // контроллер скролла
      // primary: true,
      physics: const BouncingScrollPhysics(), // физика скролла
      // shrinkWrap: true,
      padding: const EdgeInsets.all(20), // паддинг всего листа
      mainAxisSpacing: 1, // вертикальные отступы между элементами
      crossAxisSpacing: 1, // горизонтальные отступы между элементами
      childAspectRatio: 1, // высота элемента
      addAutomaticKeepAlives: true, // сохраняет элементы
      // addRepaintBoundaries: ,
      // addSemanticIndexes:,
      // cacheExtent,
      // semanticChildCount,
      // dragStartBehavior,
      // keyboardDismissBehavior,
      // srestorationId,
      // clipBehavior,
      // gridDelegate ,
      // childrenDelegate ,
      children: listOfWidgets,
    );
  }
}

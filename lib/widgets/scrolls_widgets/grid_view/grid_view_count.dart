import 'package:flutter/material.dart';

class GridViewCount extends StatelessWidget {
  const GridViewCount({super.key, required this.listOfWidgets});
  final List<Widget> listOfWidgets;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4, //__________________________________________ количество столбцов
      scrollDirection: Axis.vertical, //_____________________________ направление скролла
      reverse: false, //_____________________________________________ скролл с конца
      // controller,//_______________________________________________ контроллер скрола
      // primary: true,
      physics: const BouncingScrollPhysics(), //_____________________ физика скролла
      // shrinkWrap: true,
      padding: const EdgeInsets.all(20), //__________________________ паддинг всего листа
      mainAxisSpacing: 1, //_________________________________________ вертикальные отступы между элементами
      crossAxisSpacing: 1, //________________________________________ горизонтальные отступы между элементами
      childAspectRatio: 1, //________________________________________ высота элемента
      addAutomaticKeepAlives: true, //_______________________________ сохраняет элементы
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

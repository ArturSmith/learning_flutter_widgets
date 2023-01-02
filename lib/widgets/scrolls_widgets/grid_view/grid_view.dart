import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/patterns/widget_description_page_pattern.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const WidgetDescriptionPagePattern(
      title: "GridView",
      body: _GridViewBuilder(),
      actions: [],
      information: Text(''),
    );
  }
}

class _GridViewCount extends StatelessWidget {
  const _GridViewCount({super.key});

  List<Widget> Cards(int count) {
    final list = List<Widget>.generate(count, (index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: 30,
          color: const Color.fromARGB(255, 173, 173, 173),
          child: Center(child: Text('$index')),
        ),
      );
    });

    return list;
  }

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
      children: Cards(100),
    );
  }
}

class _GridViewBuilder extends StatelessWidget {
  const _GridViewBuilder({super.key});

  List<Widget> Cards(int count) {
    final list = List<Widget>.generate(count, (index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: 30,
          color: const Color.fromARGB(255, 173, 173, 173),
          child: Center(child: Text('$index')),
        ),
      );
    });

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
          childAspectRatio: 1,
          mainAxisExtent: 1,
        ),
        itemBuilder: ((context, index) {
          return Cards(100)[index];
        }));
  }
}

class _GridViewExtent extends StatelessWidget {
  const _GridViewExtent({super.key});
  List<Widget> Cards(int count) {
    final list = List<Widget>.generate(count, (index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: 30,
          color: const Color.fromARGB(255, 173, 173, 173),
          child: Center(child: Text('$index')),
        ),
      );
    });

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      // scrollDirection: ,
      // reverse: ,
      // controller: ,
      // primary: ,
      // physics: ,
      // shrinkWrap: ,
      // padding: ,
      maxCrossAxisExtent: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 10,
      // addAutomaticKeepAlives: ,
      // addRepaintBoundaries: ,
      // addSemanticIndexes:,
      // cacheExtent:,
      children: Cards(100),
      // semanticChildCount:,
      // dragStartBehavior: ,
      // keyboardDismissBehavior: ,
      // restorationId: ,
      // clipBehavior: ,
    );
  }
}


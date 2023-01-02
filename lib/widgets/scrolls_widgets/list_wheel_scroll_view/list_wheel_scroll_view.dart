import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/patterns/widget_description_page_pattern.dart';

class ListWheelScrollViewWidget extends StatelessWidget {
  const ListWheelScrollViewWidget({super.key});

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
    return WidgetDescriptionPagePattern(
        title: 'ListWheelScrollView',
        body: ListViewBody(
          Cards: Cards(100),
        ),
        actions: const [],
        information: const Text('ListWheelScrollView принимает в себя массив виджетов и отображает их в виде прокручиваемого барабана.'));
  }
}

class ListViewBody extends StatelessWidget {
  const ListViewBody({super.key, required this.Cards});
  final List<Widget> Cards;
  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView(
      itemExtent: 200,                            // ширина карточек
      diameterRatio: 1.5,                         // деаметр барабана
      physics: const BouncingScrollPhysics(),     // определяет физику скролла
      offAxisFraction: 0,                         // смешение бараба от центра 
      // useMagnifier: false,
      overAndUnderCenterOpacity: 1.0,             // настраивает прозрачность всех элементов списка кроме центрального, принимает значение от 0 до 1.
      squeeze: 1,                                 // насколько близко расположены объекты списка друг к другу
      // onSelectedItemChanged: ,                 // функция вызываемая когда центральный элемент меняется
      renderChildrenOutsideViewport: false,       // нужно ли отображать объекты вне области видимости, не может принимать значение true если ClipBehavior не равно none.
      clipBehavior: Clip.none,                    // определяет поведение скролла
      // restorationId: '1',   
      // scrollBehavior: ScrollBehavior(),           
      children: Cards,                            // список виджетов 
    );
  }
}

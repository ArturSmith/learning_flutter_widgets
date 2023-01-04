import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/patterns/app_colors.dart';
import 'package:flutter_module6_practice6/patterns/widget_description_page_pattern.dart';

class ListWheelScrollViewWidget extends StatelessWidget {
  const ListWheelScrollViewWidget({super.key});

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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors().mainColor,
          title: const Text("ListWheelScrollView"),
          centerTitle: true,
        ),
        body: ListWheelViewBody(Cards: cards(100)),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            showModalBottomSheet(
                context: context,
                builder: ((context) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          const Text("Information"),
                          Container(
                            height: 1,
                            width: double.infinity,
                            color: Colors.black,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                              child: Information().information),
                        ],
                      ),
                    ),
                  );
                }));
          }),
          backgroundColor: AppColors().mainColor,
          child: const Icon(Icons.info),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

class Information {
  Widget information = const Text("Данный виджет отображает список прокручиваемых объектов в виде барабана. Можно настраивать деметр барабана, ширину объектовб прозрачность и много другое.");
}

class ListWheelViewBody extends StatelessWidget {
  const ListWheelViewBody({super.key, required this.Cards});
  final List<Widget> Cards;
  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView(
      itemExtent: 200, // ширина карточек
      diameterRatio: 1.5, // деаметр барабана
      physics: const BouncingScrollPhysics(), // определяет физику скролла
      offAxisFraction: 0, // смещение бараба от центра
      // useMagnifier: false,
      overAndUnderCenterOpacity:
          1.0, // настраивает прозрачность всех элементов списка кроме центрального, принимает значение от 0 до 1.
      squeeze: 1, // насколько близко расположены объекты списка друг к другу
      // onSelectedItemChanged: ,                 // функция вызываемая когда центральный элемент меняется
      renderChildrenOutsideViewport:
          false, // нужно ли отображать объекты вне области видимости, не может принимать значение true если ClipBehavior не равно none.
      clipBehavior: Clip.none, // определяет поведение скролла
      // restorationId: '1',
      // scrollBehavior: ScrollBehavior(),
      children: Cards, // список виджетов
    );
  }
}

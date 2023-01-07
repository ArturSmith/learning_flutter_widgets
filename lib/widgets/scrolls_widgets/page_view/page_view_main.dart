// Flutter imports:
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_module6_practice6/patterns/multi_page_pattern.dart';
import 'package:flutter_module6_practice6/patterns/single_page_pattern.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/page_view/info_page_view.dart';

class PageViewWidget extends StatelessWidget {
  PageViewWidget({super.key});
  static const routeName = '/PageViewWidget';

  final PageController _pageViewController = PageController(
    viewportFraction: 0.5,
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return SinglePagePattern(
        title: const Text('Page view'),
        bottomSheetBody: const Text(
            'Прокручиваемый список, который работает страница за страницей. Каждый дочерний элемент представления страницы должен иметь тот же размер, что и окно просмотра. Вы можете использовать PageController для управления тем, какая страница отображается в представлении. В дополнение к возможности управлять смещением содержимого внутри PageView в пикселях , PageController также позволяет вам управлять смещением с точки зрения страниц, которые являются приращением размера области просмотра.'),
        body: PageView(
          controller: _pageViewController,
          scrollDirection: Axis
              .horizontal, //________________________________________________напрвление скролла
          reverse:
              false, //__________________________________________________________________список в обратную сторону
          physics:
              const BouncingScrollPhysics(), //_________________________________________физика скролла
          pageSnapping:
              false, //____________________________________________________________
          onPageChanged:
              ((value) {}), //________________________________________
          dragStartBehavior: DragStartBehavior
              .start, //______________________________________________________________отслеживание скролла
          // allowImplicitScrolling: true,//__________________________
          // restorationId:,//___________________________________
          // clipBehavior:,//____________________________________
          // scrollBehavior: ,//__________________________________
          padEnds:
              false, //_________________________________________ добалвяет отступ к первому и поледнему элементам если значение viewportFraction < 1.
          children: [
            Container(
              // width: 100,
              // height: double.infinity,
              color: Colors.amber,
              child: Center(child: Text('1')),
            ),
            Container(
              // width: 100,
              // height: double.infinity,
              color: Colors.red,
              child: Center(child: Text('2')),
            ),
            Container(
              // width: 100,
              // height: double.infinity,
              color: Colors.indigo,
              child: Center(child: Text('3')),
            ),
            Container(
              // width: 100,
              // height: double.infinity,
              color: Colors.pink,
              child: Center(child: Text('4')),
            ),
          ], //_______________________________ определяет поведение перелистывания
        ),
        actions: []);
  }
}

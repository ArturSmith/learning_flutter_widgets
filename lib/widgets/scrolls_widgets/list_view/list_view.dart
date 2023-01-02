import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/patterns/widget_description_page_pattern.dart';

class ListViewWidget extends StatelessWidget {
  ListViewWidget({super.key});

  List<Widget> actions = [];

  final listViewController = ScrollController(initialScrollOffset: 0);

  // ignore: non_constant_identifier_names
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
      title: 'List view',
      actions: actions,
      body: Column(
        children: [
          const Text("ListView default"),
          Expanded(child: _ListViewDefault(Cards: Cards(10))),
          const Text("ListView.builder"),
          Expanded(child: _ListViewBuilder(Cards: Cards(100))),
          const Text("ListView.separated"),
          Expanded(
              child: _ListViewSeparated(Cards: Cards(100))),
        ],
      ),
      information: Center(
        child: Information().information,
      ),
    );
  }
}

class Information {
  Widget information = Column(
    children: const [
      Text(
          'ListView принимает в себя массив виджетов и прокручивает их. Существует 4 конструктора данного виджета. Дефолтный конструктор ListView() используется для небольших списков виджетов. Конструктор listView.build подходит для больших или бесконечных списков, он позволяет загружать только те виджеты которые действительно видны. Конструктор ListView.separated такой же как и билдер, но позволяет вставлять между основными виджетами новый виджетб например Divider. Состояние скролла можно отслеживать и контралировать с помощью контроллера ScrollController.')
    ],
  );
}

class _ListViewDefault extends StatelessWidget {
  const _ListViewDefault({super.key, required this.Cards});
  final List<Widget> Cards;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: Cards,
    );
  }
}

class _ListViewBuilder extends StatelessWidget {
  const _ListViewBuilder({super.key, required this.Cards});
  final List<Widget> Cards;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: ((context, index) {
      return Cards[index];
    }));
  }
}

class _ListViewSeparated extends StatelessWidget {
  const _ListViewSeparated({super.key, required this.Cards});
  final List<Widget> Cards;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: ((context, index) {
          return Cards[index];
        }),
        separatorBuilder: ((context, index) => const Divider()),
        itemCount: Cards.length);
  }
}

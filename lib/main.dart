import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/widgets/categories_page/categories_page.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/list_view/list_view.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/scrolls_categories_page.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/single_child_scroll_view/single_child_scroll_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/CategoriesPage': ((context) =>  CateroriesPage()),
        '/Scrolls': (context) => ScrollsCategoriesPage(),
        "/SingleChildSCrollView": (context) =>
             SingleChildScrollViewWidget(),
        '/ListView': (context) =>  ListViewWidget(),
      },
      initialRoute: '/CategoriesPage',
    );
  }
}

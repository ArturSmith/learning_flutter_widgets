import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/navigation/routes.dart';
import 'package:flutter_module6_practice6/widgets/categories_page/categories_page.dart';
import 'package:fluro/fluro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final _allRoutes = Routes().routes;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // routes: _allRoutes,
      home: CateroriesPage(),
    );
  }
}

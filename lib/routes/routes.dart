import 'package:flutter/cupertino.dart';
import 'package:flutter_module6_practice6/widgets/categories_page/categories_page.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/custom_scroll_view/custom_scroll_view_main.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/grid_view/grid_view_main.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/list_view/list_view_main.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/list_wheel_scroll_view/list_wheel_scroll_view.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/scrolls_categories_page.dart';
import '../widgets/scrolls_widgets/single_child_scroll_view/single_child_scroll_view.dart';

class Routes {
  final Map<String, WidgetBuilder> routes = {
    '/CategoriesPage': ((context) => CateroriesPage()),
    '/Scrolls': (context) => ScrollsCategoriesPage(),
    "/SingleChildSCrollView": (context) => SingleChildScrollViewWidget(),
    '/ListView': (context) => ListViewWidget(),
    '/ListWheelScrollView': (context) => const ListWheelScrollViewWidget(),
    '/GridView': (context) => GridViewWidget(),
    '/CustomScrollView': (context) => const CustomScrollViewWidget(),
  };
}

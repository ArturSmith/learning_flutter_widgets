// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_module6_practice6/patterns/button_pattern.dart';
import 'package:flutter_module6_practice6/patterns/categories_page_pattern.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/custom_scroll_view/custom_scroll_view_main.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/grid_view/grid_view_main.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/list_view/list_view_main.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/list_wheel_scroll_view/list_wheel_scroll_view.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/page_view/page_view_main.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/reorderable_list_view/reorderable_list_view_main.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/single_child_scroll_view/single_child_scroll_view.dart';

class ScrollsCategoriesPage extends StatelessWidget {
  ScrollsCategoriesPage({super.key});
  static const routeName = '/ScrollCategoriesPage';

  List<Widget> listOfButtons = [
    ButtonPattern(
      name: "SingleChildScrollView",
      route: "SingleChildSCrollView",
      page: SingleChildScrollViewWidget(),
    ),
    ButtonPattern(
      name: "ListView",
      route: "ListView",
      page: ListViewWidget(),
    ),
    ButtonPattern(
      name: "ListWheelScrollView",
      route: "ListWheelScrollView",
      page: const ListWheelScrollViewWidget(),
    ),
    ButtonPattern(
      name: "GridView",
      route: "GridView",
      page: GridViewWidget(),
    ),
    ButtonPattern(
      name: "CustomScrollView",
      route: "CustomScrollView",
      page: const CustomScrollViewWidget(),
    ),
    ButtonPattern(
      name: "ReorderableListView",
      route: "ReorderableListView",
      page: const ReorderableListViewWidget(),
    ),
    ButtonPattern(
      name: "PageView",
      route: "PageView",
      page: PageViewWidget(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CateroriesPagePattern(
      title: 'Scrolls',
      listOFButtons: listOfButtons,
    );
  }
}

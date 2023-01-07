import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/widgets/categories_page/categories_page.dart';
import 'package:flutter_module6_practice6/widgets/layout_widgets/layout_builder/layout_builder_main.dart';
import 'package:flutter_module6_practice6/widgets/layout_widgets/layout_widgets_categories_page.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/custom_scroll_view/custom_scroll_view_main.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/grid_view/grid_view_main.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/list_wheel_scroll_view/list_wheel_scroll_view.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/page_view/page_view_main.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/reorderable_list_view/reorderable_list_view_main.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/scrolls_categories_page.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/single_child_scroll_view/single_child_scroll_view.dart';

class FluroRoutes {
  static final Handler _handlerCategoryPage =
      Handler(handlerFunc: ((context, parameters) {
    return CateroriesPage();
  }));

  static final Handler _handlerScrollsCategoriesPage =
      Handler(handlerFunc: ((context, parameters) {
    return ScrollsCategoriesPage();
  }));

  static final Handler _handlerLayoutWidgetsCategoryPage =
      Handler(handlerFunc: ((context, parameters) {
    return LayoutWidgetsCategoryPage();
  }));

  static final Handler _handlerSingleChildScrollViewWidget =
      Handler(handlerFunc: ((context, parameters) {
    return SingleChildScrollViewWidget();
  }));

  static final Handler _handlerListWheelScrollViewWidget =
      Handler(handlerFunc: ((context, parameters) {
    return ListWheelScrollViewWidget();
  }));

  static final Handler _handlerGridViewWidget =
      Handler(handlerFunc: ((context, parameters) {
    return GridViewWidget();
  }));
  static final Handler _handlerCustomScrollViewWidget =
      Handler(handlerFunc: ((context, parameters) {
    return CustomScrollViewWidget();
  }));
  static final Handler _handlerReorderableListViewWidget =
      Handler(handlerFunc: ((context, parameters) {
    return ReorderableListViewWidget();
  }));
  static final Handler _handlerPageViewWidget =
      Handler(handlerFunc: ((context, parameters) {
    return PageViewWidget();
  }));
  static final Handler _handlerLayoutBuilderWidget =
      Handler(handlerFunc: ((context, parameters) {
    return LayoutBuilderWidget();
  }));

  static void setUpRouter() {}
}

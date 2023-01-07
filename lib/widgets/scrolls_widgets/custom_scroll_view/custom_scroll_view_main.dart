// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/custom_scroll_view/silver_grid.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/custom_scroll_view/sliver_app_bar.dart';
import 'package:flutter_module6_practice6/widgets/scrolls_widgets/custom_scroll_view/sliver_list.dart';

class CustomScrollViewWidget extends StatefulWidget {
  const CustomScrollViewWidget({super.key});
  static const routeName = '/CustomScrollViewWidget';

  @override
  State<CustomScrollViewWidget> createState() => _CustomScrollViewWidgetState();
}

class _CustomScrollViewWidgetState extends State<CustomScrollViewWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBarWidget(),
          SliverListWidget(),
          SilverGridWidget(),
          CupertinoSliverNavigationBar(
            largeTitle: Text('CupertinoAppBar'),
          ),
          SliverListWidget(),
        ],
      ),
    );
  }
}

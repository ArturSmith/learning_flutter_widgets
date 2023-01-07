// Flutter imports:
import 'package:flutter/material.dart';

class SliverListWidget extends StatelessWidget {
  const SliverListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Container(
          color: index.isOdd ? Colors.blueGrey : Colors.lightBlue,
          width: double.infinity,
          height: 100,
        );
      }, childCount: 20),
    );
  }
}

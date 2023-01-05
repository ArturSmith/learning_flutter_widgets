import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/patterns/app_colors.dart';

class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // Key? key,
      // Widget? leading,
      // bool automaticallyImplyLeading = true,
      // title: const Text('SliverAppBar'),
      // List<Widget>? actions,
      flexibleSpace: const FlexibleSpaceBar(title:Text('SliverAppBar') ,),
      // PreferredSizeWidget? bottom,
      elevation: 30,
      // double? scrolledUnderElevation,
      // Color? shadowColor,
      // Color? surfaceTintColor,
      // bool forceElevated = false,
      backgroundColor: AppColors().mainColor,
      // Color? foregroundColor,
      // Brightness? brightness,
      // IconThemeData? iconTheme,
      // IconThemeData? actionsIconTheme,
      // TextTheme? textTheme,
      // bool primary = true,
      centerTitle: true,
      // bool excludeHeaderSemantics = false,
      // double? titleSpacing,
      // double? collapsedHeight,
      expandedHeight: 200,
      floating: true, // при pinner == false && snap == false, скрывает appBar при прокрутке вниз и показывает постепенно при прокрутке вверх 
      pinned: false, // скрывать app bar при прокрутке вниз: false = вскрывать, true = не скрывать
      snap: false, // при floating == true, показывает appBar сразу полностью при прокрутке вверх. Не может быть true при floating == false
      // bool stretch = false,
      // double stretchTriggerOffset = 100.0,
      // Future<void> Function()? onStretchTrigger,
      // ShapeBorder? shape,
      // double toolbarHeight = kToolbarHeight,
      // double? leadingWidth,
      // bool? backwardsCompatibility,
      // TextStyle? toolbarTextStyle,
      // TextStyle? titleTextStyle,
      // SystemUiOverlayStyle? systemOverlayStyle,
    );
  }
}

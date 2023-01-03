import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/patterns/app_colors.dart';

class WidgetDescriptionPagePattern extends StatefulWidget {
  const WidgetDescriptionPagePattern(
      {super.key,
      required this.actions,
      required this.bottomNavigationBarItems,
      required this.bodyWidgetOptions,
      required this.bottomSheetWidgetOptions,
      required this.titlesList,
      required this.informationWhenBottomBarIsNotValid,
      required this.bodyWhenBottomBarIsNotValid,
      required this.title});

  final List<Widget> actions;
  final List<BottomNavigationBarItem> bottomNavigationBarItems;
  final List<Widget> bodyWidgetOptions;
  final List<Widget> bottomSheetWidgetOptions;
  final List<String> titlesList;
  final Widget title;
  final Widget informationWhenBottomBarIsNotValid;
  final Widget bodyWhenBottomBarIsNotValid;

  @override
  State<WidgetDescriptionPagePattern> createState() =>
      _WidgetDescriptionPagePatternState();
}

class _WidgetDescriptionPagePatternState
    extends State<WidgetDescriptionPagePattern> {
  int _selectedIndex = 0;
  Icon _bottomBarActivationIcon = const Icon(Icons.ads_click);
  bool _bottomBarIsValid = false;

  void _bottomBarActivation() {
    int _itemsLength = widget.bottomNavigationBarItems.length;
    int _bodyLength = widget.bodyWidgetOptions.length;
    int _bottomSheetLength = widget.bottomSheetWidgetOptions.length;
    int _titlesLength = widget.titlesList.length;
    if (!_bottomBarIsValid) {
      if (_itemsLength >= 2 &&
          _bodyLength == _itemsLength &&
          _bottomSheetLength == _itemsLength &&
          _titlesLength == _itemsLength) {
        _bottomBarIsValid = true;
        _bottomBarActivationIcon = const Icon(
          Icons.ads_click,
          color: Colors.red,
        );
      }
    } else {
      _bottomBarIsValid = false;
      _bottomBarActivationIcon = const Icon(
        Icons.ads_click,
        color: Colors.white,
      );
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    widget.actions.add(IconButton(
        onPressed: (() {
          _bottomBarActivation();
        }),
        icon: _bottomBarActivationIcon));
  }

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors().mainColor,
          title: _bottomBarIsValid == true
              ? Text(widget.titlesList[_selectedIndex])
              : widget.title,
          centerTitle: true,
          actions: widget.actions,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors().mainColor,
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: ((context) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          const Text("Information"),
                          Container(
                            height: 1,
                            width: double.infinity,
                            color: Colors.black,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                              child: _bottomBarIsValid == true
                                  ? widget
                                      .bottomSheetWidgetOptions[_selectedIndex]
                                  : widget.informationWhenBottomBarIsNotValid),
                        ],
                      ),
                    ),
                  );
                }));
          },
          child: const Icon(Icons.info),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: _bottomBarIsValid == true
            ? widget.bodyWidgetOptions[_selectedIndex]
            : widget.bodyWhenBottomBarIsNotValid,
        bottomNavigationBar: _bottomBarIsValid == true
            ? BottomNavigationBar(
                elevation: 40,
                items: widget.bottomNavigationBarItems,
                currentIndex: _selectedIndex,
                unselectedIconTheme: const IconThemeData(color: Colors.black),
                selectedIconTheme: IconThemeData(color: AppColors().mainColor),
                selectedLabelStyle: TextStyle(color: AppColors().mainColor),
                unselectedLabelStyle: const TextStyle(color: Colors.black),
                showSelectedLabels: true,
                showUnselectedLabels: true,
                onTap: _onTap,
              )
            : null,
      ),
    );
  }
}

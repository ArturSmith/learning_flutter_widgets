import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/patterns/app_colors.dart';
import 'package:flutter_module6_practice6/widgets/categories_page/categories_page_modal_bottom_sheet_body.dart';

class CateroriesPagePattern extends StatefulWidget {
  const CateroriesPagePattern(
      {super.key, required this.title, required this.listOfButtons});

  final String title;
  final List<Widget> listOfButtons;
  @override
  State<CateroriesPagePattern> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CateroriesPagePattern> {
  void addNewButton() {
    final _nameController = TextEditingController();
    final _routeController = TextEditingController();
    showModalBottomSheet(
      context: context,
      builder: ((context) {
        return CaterogiesPageModalBottomSheetBody(
            nameController: _nameController, routeController: _routeController);
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors().mainColor,
          centerTitle: true,
          title: Text(widget.title),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors().mainColor,
          onPressed: addNewButton,
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: widget.listOfButtons,
          ),
        )),
      ),
    );
  }
}

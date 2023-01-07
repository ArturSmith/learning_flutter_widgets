// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_module6_practice6/patterns/app_colors.dart';
import 'package:flutter_module6_practice6/patterns/categories_page_modal_bottom_sheet_body_pattern.dart';

class CateroriesPagePattern extends StatefulWidget {
  const CateroriesPagePattern(
      {super.key, required this.title, required this.listOFButtons});
  final List<Widget> listOFButtons;
  final String title;
  @override
  State<CateroriesPagePattern> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CateroriesPagePattern> {
  final bool _bottomSheetIsValid = false;

  //============ БУДЕТ РЕАЛИЗОВАНО ПОЗЖЕ ===================================================
  // final TextEditingController _nameController = TextEditingController();
  // final TextEditingController _routeController = TextEditingController();

  // void addNewCategory() {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: ((context) {
  //       return CaterogiesPageModalBottomSheetBody(
  //         nameController: _nameController,
  //         routeController: _routeController,
  //         onPressed: () {
  //           if (_nameController.text != '' && _routeController.text != '') {
  //             // Navigator.pop(context);
  //             print(
  //                 "name = ${_nameController.text}, route = ${_routeController.text}");
  //           } else {
  //             print("error");
  //           }
  //         },
  //       );
  //     }),
  //   );
  // }
  // =========================================================================================

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors().mainColor,
          centerTitle: true,
          title: Text(widget.title),
        ),
        //=============ТРЕБУЕТ ДОРАБОТКИ======================================================
        // floatingActionButton: FloatingActionButton(
        //   backgroundColor: AppColors().mainColor,
        //   onPressed: addNewCategory,
        //   child: const Icon(Icons.add),
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        //===================================================================================
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ListView(children: widget.listOFButtons),
          ),
        ),
      ),
    );
  }
}

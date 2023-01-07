// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_module6_practice6/patterns/app_colors.dart';
import 'package:flutter_module6_practice6/patterns/button_pattern.dart';
import 'package:flutter_module6_practice6/patterns/categories_page_pattern.dart';
import 'package:flutter_module6_practice6/patterns/text_field_decoration.dart';

class CaterogiesPageModalBottomSheetBody extends StatefulWidget {
  const CaterogiesPageModalBottomSheetBody(
      {super.key,
      required this.nameController,
      required this.routeController,
      required this.onPressed});

  final TextEditingController nameController;
  final TextEditingController routeController;
  final void Function() onPressed;
  @override
  State<CaterogiesPageModalBottomSheetBody> createState() =>
      _HomePageModalBottomSheetBodyState();
}

class _HomePageModalBottomSheetBodyState
    extends State<CaterogiesPageModalBottomSheetBody> {
  bool errorEmptyString = false;

  void addCategory() {
    if (widget.nameController.text != '' && widget.routeController.text != '') {
      errorEmptyString = false;
      Navigator.pop(context);
    } else {
      errorEmptyString = true;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        height: 300,
        width: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // mainAxisSize: MainAxisSize.max,
            children: [
              TextField(
                controller: widget.nameController,
                autofocus: true,
                textInputAction: TextInputAction.next,
                decoration: TextFieldDecoration(errorEmptyString, 'name', '')
                    .setTextFieldDecoration(),
              ),
              TextField(
                controller: widget.routeController,
                textInputAction: TextInputAction.next,
                decoration: TextFieldDecoration(errorEmptyString, 'route', '/')
                    .setTextFieldDecoration(),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors().mainColor)),
                  onPressed: widget.onPressed,
                  child: const Text("Add category"))
            ]),
      ),
    );
  }
}

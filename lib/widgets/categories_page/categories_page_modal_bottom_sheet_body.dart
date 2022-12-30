import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/patterns/app_colors.dart';
import 'package:flutter_module6_practice6/patterns/text_field_decoration.dart';

class CaterogiesPageModalBottomSheetBody extends StatefulWidget {
  const CaterogiesPageModalBottomSheetBody(
      {super.key, required this.nameController, required this.routeController});
  final TextEditingController nameController;
  final TextEditingController routeController;
  @override
  State<CaterogiesPageModalBottomSheetBody> createState() =>
      _HomePageModalBottomSheetBodyState();
}

class _HomePageModalBottomSheetBodyState
    extends State<CaterogiesPageModalBottomSheetBody> {
  bool errorEmptyString = false;

  void addButton() {
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
        height: 250,
        width: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: widget.nameController,
                decoration: TextFieldDecoration(errorEmptyString, 'name')
                    .setTextFieldDecoration(),
              ),
              TextField(
                controller: widget.routeController,
                decoration: TextFieldDecoration(errorEmptyString, 'route')
                    .setTextFieldDecoration(),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors().mainColor)),
                  onPressed: addButton,
                  child: const Text("Add category"))
            ]),
      ),
    );
  }
}

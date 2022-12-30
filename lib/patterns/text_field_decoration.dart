import 'package:flutter/material.dart';

class TextFieldDecoration {
  TextFieldDecoration(this.errorEmptyString, this.labelText);
  final bool errorEmptyString;
  final String labelText;
  InputDecoration setTextFieldDecoration() {
    final decoration = InputDecoration(
      label: errorEmptyString == false
          ? _LabelText(
              color: const Color.fromARGB(255, 168, 168, 168), text: labelText)
          : _LabelText(color: Colors.red, text: 'Write $labelText'),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      isCollapsed: true,
      contentPadding: const EdgeInsets.all(15),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
    );
    return decoration;
  }
}

class _LabelText extends StatelessWidget {
  _LabelText({super.key, required this.color, required this.text});
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      "$text",
      style: TextStyle(color: color),
    );
  }
}

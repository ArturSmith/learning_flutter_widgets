import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/patterns/app_colors.dart';

class ButtonPattern extends StatelessWidget {
  ButtonPattern({super.key, required this.name, this.route});
  final String name;
  String? route;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        height: 40,
        child: ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(30),
            backgroundColor: MaterialStateProperty.all(AppColors().mainColor),
          ),
          onPressed: (() {
            if (route != null) {
              Navigator.pushNamed(context, route!);
            }
          }),
          child: Center(
            child: Text(name),
          ),
        ),
      ),
    );
  }
}

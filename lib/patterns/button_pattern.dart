import 'package:flutter/material.dart';
import 'package:flutter_module6_practice6/patterns/app_colors.dart';

class ButtonPattern extends StatelessWidget {
  const ButtonPattern({
    super.key,
    required this.name,
    required this.route,
    required this.page,
  });
  final String name;
  final String? route;
  final Widget page;
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
            Navigator.of(context).push(
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) => page,
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  Animation<double> _animate =
                      Tween(begin: 0.0, end: 1.0).animate(animation);
                  return ScaleTransition(
                    scale: _animate,
                    child: FadeTransition(
                      opacity: animation,
                      child: child,
                    ),
                  );
                },
                transitionDuration: const Duration(milliseconds: 300),
                reverseTransitionDuration: const Duration(milliseconds: 300),
                barrierDismissible: false,
              ),
            );
          }),
          child: Center(
            child: Text(name),
          ),
        ),
      ),
    );
  }
}

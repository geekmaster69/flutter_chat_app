import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final String title;
  final void Function() onPressed;
  const CustomButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
            elevation: 2,
            highlightElevation: 5,
            shape: const StadiumBorder(),
            color: Colors.blue,
            onPressed: onPressed,
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: Center(
                child: Text(title, style: const TextStyle(color: Colors.white,fontSize: 18),),
              ),
            ),
          );
  }
}
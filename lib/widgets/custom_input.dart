import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final IconData icon;
  final String hint;
  final TextEditingController textController;
  final TextInputType keyboarType;
  final bool isPassword;

  const CustomInput(
      {super.key,
      required this.icon,
      required this.hint,
      required this.textController,
      this.keyboarType = TextInputType.text,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 15),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.05),
                offset: const Offset(0, 5),
                blurRadius: 5)
          ]),
      child: TextField(
        controller: textController,
        autocorrect: isPassword,
        keyboardType: keyboarType,
        // obscureText: true,
        decoration: InputDecoration(
            prefixIcon: Icon(icon),
            focusedBorder: InputBorder.none,
            border: InputBorder.none,
            hintText: hint),
      ),
    );
  }
}

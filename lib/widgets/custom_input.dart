import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final Icon icon;
  final String? hint;
  final TextInputType keyboardType;
  final TextEditingController textController;
  final bool isPassword;

  const CustomInput(
      {Key? key,
      required this.icon,
      required this.hint,
      this.keyboardType = TextInputType.text,
      required this.textController,
      this.isPassword = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.05),
              offset: Offset(0, 5),
              blurRadius: 5),
        ],
      ),
      child: TextField(
        controller: this.textController,
        autocorrect: false,
        keyboardType: this.keyboardType,
        obscureText: this.isPassword,
        decoration: InputDecoration(
          prefixIcon: icon,
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          hintText: hint,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const BlueButton({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Container(
        width: double.infinity,
        height: 55,
        child: Center(
          child: Text(this.text),
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: StadiumBorder(),
        primary: Theme.of(context).primaryColor,
        textStyle: TextStyle(fontSize: 15),
      ),
      onPressed: onPressed,
    );
  }
}

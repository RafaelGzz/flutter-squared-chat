import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String destination;
  final String hint;
  final String buttonText;

  const Labels({
    Key? key,
    required this.destination,
    required this.hint,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            this.hint,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, this.destination);
            },
            child: Text(
              this.buttonText,
              style: TextStyle(
                color: Colors.blue[600],
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Terminos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Términos y condiciones",
      style: TextStyle(fontWeight: FontWeight.w200),
    );
  }
}

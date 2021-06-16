import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String title;

  const Logo({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      child: Column(
        children: [
          Image(
            image: AssetImage('assets/img/logo.png'),
          ),
          SizedBox(height: 10),
          Text(title, style: TextStyle(fontSize: 28)),
        ],
      ),
    );
  }
}
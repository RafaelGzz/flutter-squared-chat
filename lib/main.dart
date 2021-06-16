import 'package:flutter/material.dart';
import 'package:squared_chat/routes/routes.dart';
import 'package:squared_chat/themes/darkTheme.dart';
import 'package:squared_chat/themes/lightTheme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Squared Chat',
      initialRoute: 'login',
      routes: appRoutes,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}

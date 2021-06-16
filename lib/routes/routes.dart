import 'package:flutter/cupertino.dart';
import 'package:squared_chat/pages/chat_page.dart';
import 'package:squared_chat/pages/loading_page.dart';
import 'package:squared_chat/pages/login_page.dart';
import 'package:squared_chat/pages/register_page.dart';
import 'package:squared_chat/pages/usuarios_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'usuarios': (_) => UsuariosPage(),
  'chat': (_) => ChatPage(),
  'login': (_) => LoginPage(),
  'register': (_) => RegisterPage(),
  'loading': (_) => LoadingPage(),
};

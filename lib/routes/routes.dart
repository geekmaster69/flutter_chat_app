import 'package:chat_app/pages/pages.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'ususarios': (_) => const UsuariosPage(),
  'chat': (_) => const ChatPage(),
  'login': (_) => const Loginpage(),
  'register': (_) => const RegisterPage(),
  'loading': (_) => const LoadingPage(),
};

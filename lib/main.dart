import 'package:chat_app/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        useMaterial3: true
      ),
      initialRoute: 'login',
      routes: appRoutes,
      
    );
  }
}

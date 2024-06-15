import 'package:flutter/material.dart';
import 'loading_page.dart';

void main() {
  runApp(CinemaApp());
}

class CinemaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cinema App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
      home: LoadingPage(), // Inicialmente exibe a página de carregamento
    );
  }
}

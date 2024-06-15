import 'package:flutter/material.dart';
import 'city_selection.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    await Future.delayed(Duration(seconds: 3)); // Simula um carregamento por 3 segundos

    // Após o carregamento, navega para a página de seleção de cidade
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => CitySelectionPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'images/cinema_app.png', // Caminho relativo à pasta images
              width: 150, // Ajuste conforme necessário
            ),
            SizedBox(height: 20.0),
            CircularProgressIndicator(), // Indicador de progresso (loading spinner)
            SizedBox(height: 20.0),
            Text(
              'Loading...',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

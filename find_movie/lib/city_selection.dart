import 'package:flutter/material.dart';
import 'cinema_selection.dart';

class CitySelectionPage extends StatefulWidget {
  @override
  _CitySelectionPageState createState() => _CitySelectionPageState();
}

class _CitySelectionPageState extends State<CitySelectionPage> {
  String? selectedCity;
  final List<String> cities = ['Palmas-TO', 'Goiânia-GO', 'Belo Horizonte-MG'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selecione uma Cidade'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              value: selectedCity,
              hint: Text('Selecione uma Cidade', style: TextStyle(color: Colors.white)),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[800],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              items: cities.map((city) {
                return DropdownMenuItem(
                  value: city,
                  child: Text(city),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCity = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: selectedCity != null
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CinemaSelectionPage(city: selectedCity!),
                        ),
                      );
                    }
                  : null,
              child: Text('Próximo'),
            ),
          ],
        ),
      ),
    );
  }
}

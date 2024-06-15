import 'package:flutter/material.dart';
import 'movie_list.dart';

class CinemaSelectionPage extends StatefulWidget {
  final String city;

  CinemaSelectionPage({required this.city});

  @override
  _CinemaSelectionPageState createState() => _CinemaSelectionPageState();
}

class _CinemaSelectionPageState extends State<CinemaSelectionPage> {
  String? selectedCinema;
  final Map<String, List<String>> cinemas = {
    'Palmas-TO': ['Cinemark', 'Lumiere'],
    'Goiânia-GO': ['Cinemark', 'Kinoplex'],
    'Belo Horizonte-MG': ['Cinemark', 'Cineart'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selecione o Cinema'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              value: selectedCinema,
              hint: Text('Selecione o Cinema', style: TextStyle(color: Colors.white)),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[800],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              items: (cinemas[widget.city] ?? []).map((cinema) {
                return DropdownMenuItem(
                  value: cinema,
                  child: Text(cinema),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCinema = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: selectedCinema != null
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MovieListPage(city: widget.city, cinema: selectedCinema!),
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

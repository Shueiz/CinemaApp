import 'package:flutter/material.dart';
import 'movie_detail.dart';

class MovieListPage extends StatelessWidget {
  final String city;
  final String cinema;
  final List<Movie> movies = [
    Movie(
      title: 'Gato de Botas 2',
      time: '14:00 16:00 18:00',
      description: 'O Gato de Botas descobre que sua paixão pela aventura cobrou seu preço: ele já gastou oito de suas nove vidas. Ele então parte em uma jornada épica para encontrar o mítico Último Desejo e restaurar suas nove vidas.',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/pt/7/78/Puss_in_Boots_The_Last_Wish_poster.jpg', // URL da imagem para Movie 1
      rating: 'Livre', // Classificação indicativa para Movie 1
    ),
    Movie(
      title: 'Tropa de Elite',
      time: '19:00 22:00',
      description: 'Nascimento, capitão da Tropa de Elite do Rio de Janeiro, é designado para chefiar uma das equipes que tem como missão apaziguar o Morro do Turano. Ele precisa cumprir as ordens enquanto procura por um substituto para ficar em seu lugar. Em meio a um tiroteio, Nascimento e sua equipe resgatam Neto e Matias, dois aspirantes a oficiais da PM. Ansiosos para entrar em ação e impressionados com a eficiência de seus salvadores, os dois se candidatam ao curso de formação da Tropa de Elite.',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/pt/2/2a/TropaDeElitePoster.jpg', // URL da imagem para Movie 2
      rating: '16', // Classificação indicativa para Movie 2
    ),
    Movie(
      title: 'O Procurado',
      time: '15:00 17:00',
      description: 'Wesley Gibson é um jovem que não vê mais sentido na vida após o misterioso assassinato de seu pai. Tudo muda quando ele conhece Fox, uma mulher enigmática que o convida a fazer parte de uma sociedade secreta de assassinos chamada de Fraternidade. Wesley descobre novas habilidades e vê uma oportunidade de vingar a morte do pai. No entanto, percebe que o perigo está mais perto do que imaginava.',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/pt/9/98/Wanted_film_poster.jpg', // URL da imagem para Movie 3
      rating: '18', // Classificação indicativa para Movie 3
    ),
  ];

  MovieListPage({required this.city, required this.cinema});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filmes em $cinema'),
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return ListTile(
            leading: Image.network(
              movie.imageUrl,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(movie.title, style: TextStyle(color: Colors.white)),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Classificação: ${movie.rating}', style: TextStyle(color: Colors.white70)),
                Text('Horários: ${movie.time}', style: TextStyle(color: Colors.white70)),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MovieDetailPage(movie: movie),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class Movie {
  final String title;
  final String time;
  final String description;
  final String imageUrl;
  final String rating; 

  Movie({
    required this.title,
    required this.time,
    required this.description,
    required this.imageUrl,
    required this.rating,
  });
}

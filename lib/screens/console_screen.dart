import 'package:flutter/material.dart';

class ConsoleScreen extends StatelessWidget {
  final String console;

  const ConsoleScreen({super.key, required this.console});

  // Temporary mock list of games
  List<Map<String, String>> getMockGames() {
    return [
      {"title": "Pokémon Fire Red", "image": "assets/images/pokemon_fire_red.png"},
      {"title": "Mario Kart Advance", "image": "assets/images/mario_kart.png"},
      {"title": "Metroid Fusion", "image": "assets/images/metroid_zeromission.png"},
    ];
  }

  @override
  Widget build(BuildContext context) {
    final games = getMockGames();

    return Scaffold(
      appBar: AppBar(
        title: Text('$console Games'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: games.length,
        itemBuilder: (context, index) {
          final game = games[index];
          return ListTile(
            leading: Image.asset(game["image"]!, width: 40),
            title: Text(game["title"]!),
            trailing: Icon(Icons.play_arrow, color: Colors.purpleAccent),
            onTap: () {
              // TODO: Start emulation
            },
          );
        },
      ),
    );
  }
}

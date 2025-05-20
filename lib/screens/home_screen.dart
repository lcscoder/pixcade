import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PIXCADE',
          style: TextStyle(
            fontFamily: 'PressStart2P', // Use uma fonte arcade se quiser
            letterSpacing: 2,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                // TODO: abrir seletor de arquivos para ROMs
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purpleAccent,
                padding: const EdgeInsets.all(16),
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text('ADICIONAR ROMs'),
            ),
            const SizedBox(height: 30),
            const Text(
              'Consoles disponíveis:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: const [
                  ConsoleCard(name: 'GBA', iconPath: 'assets/icons/gba.png'),
                  ConsoleCard(name: 'SNES', iconPath: 'assets/icons/snes.png'),
                  ConsoleCard(name: 'NDS', iconPath: 'assets/icons/nds.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ConsoleCard extends StatelessWidget {
  final String name;
  final String iconPath;

  const ConsoleCard({
    super.key,
    required this.name,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: Navegar para lista de jogos desse console
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.purpleAccent),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(iconPath, height: 50),
            const SizedBox(height: 10),
            Text(name, style: const TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}

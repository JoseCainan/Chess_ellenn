import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChessVisionScreen(),
    );
  }
}

class ChessVisionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.person, color: Colors.pink),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.blue),
            onPressed: () {},
          ),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/chess_icon.png', // Coloque a imagem desejada no caminho especificado.
              height: 40,
            ),
            const SizedBox(width: 8),
            const Text(
              'Chess Vision',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _buildOption(
                    'Multijogador\npartida por rating',
                    'assets/lib/telas/icones/multijogador.png',
                  ),
                  _buildOption(
                    'Ellen IA\nconverse com Ellen\ntire dúvidas\nanalise partidas',
                    'assets/lib/telas/icones/girlAI.png',
                  ),
                  _buildOption(
                    'Jogar\nquebra-cabeça',
                    'assets/lib/telas/icones/download.png',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            BottomNavigationBar(
              backgroundColor: Colors.black,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.menu),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.bar_chart),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.extension),
                  label: '',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOption(String label, String imagePath) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

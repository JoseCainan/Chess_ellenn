import 'package:flutter/material.dart';
import 'tela_config.dart';
<<<<<<< HEAD
import 'tela_newgame.dart';
=======
import 'tela_newgame.dart'; // Atualizado para a tela correta
>>>>>>> dfdff32dcf66a40bb56e015adad14832e3b15619
import 'tela_j1XIA.dart';

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.person, color: Colors.pink),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => TelaConfig()),
            );
          },
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
              'assets/telas/icones/Cavalo.png',
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
                    context,
                    'Multijogador\npartida por rating',
                    'assets/telas/icones/multijogador.png',
                    () {
                      Navigator.pushReplacement(
                        context,
<<<<<<< HEAD
                        MaterialPageRoute(builder: (context) => TelaNewGame()),
=======
                        MaterialPageRoute(
                            builder: (context) =>
                                TelaNewGame()), // Alterado para a tela correta
>>>>>>> dfdff32dcf66a40bb56e015adad14832e3b15619
                      );
                    },
                  ),
                  _buildOption(
                    context,
                    'Ellen IA\nconverse com Ellen\ntire dúvidas\nanalise partidas',
                    'assets/telas/icones/girlAI.png',
                    () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => TelaJ1XIA()),
                      );
                    },
                  ),
                  _buildOption(
                    context,
                    'Jogar\nquebra-cabeça',
                    'assets/telas/icones/download.png',
                    () {},
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

  Widget _buildOption(
    BuildContext context,
    String label,
    String imagePath,
    void Function()? onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
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
      ),
    );
  }
}

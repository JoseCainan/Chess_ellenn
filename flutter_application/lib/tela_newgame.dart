import 'package:flutter/material.dart';
import 'tela_j1Xj2.dart';
import 'tela_j1XIA.dart';
import 'tela_inicial.dart';

class TelaNewGame extends StatelessWidget {
  const TelaNewGame({Key? key}) : super(key: key);

  Widget _buildOptionButton({
    required IconData icon,
    required String label,
    Color? iconColor,
    required void Function()? onPressed,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[850],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      ),
      child: Row(
        children: [
          Icon(icon, size: 30, color: iconColor),
          const SizedBox(width: 10),
          Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      TelaInicial()), // Volta para a tela inicial
            );
          },
        ),
        title: const Text(
          'Novo jogo',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Time Control Button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[850],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.timer, color: Colors.green),
                      const SizedBox(width: 10),
                      const Text(
                        '10 min',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                  const Icon(Icons.arrow_forward_ios, color: Colors.grey),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Play Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            TelaJ1XJ2()), // Jogo entre dois jogadores
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                child: const Text(
                  'Play',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Other Options
            _buildOptionButton(
              icon: Icons.emoji_events,
              label: 'Tournaments',
              iconColor: Colors.yellow,
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            _buildOptionButton(
              icon: Icons.handshake,
              label: 'Play a Friend',
              iconColor: Colors.brown,
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            _buildOptionButton(
              icon: Icons.desktop_windows,
              label: 'vs Computer',
              iconColor: Colors.blue,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TelaJ1XIA()), // Jogo contra a IA
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

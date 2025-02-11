import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'tela_inicial.dart';
=======
import 'tela_inicial.dart'; // Importando a tela inicial
>>>>>>> dfdff32dcf66a40bb56e015adad14832e3b15619

class TelaConfig extends StatelessWidget {
  const TelaConfig({super.key});

  Widget _buildConfigButton(
    String label,
    IconData icon,
    Color iconColor,
    void Function()? onPressed,
  ) {
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
              MaterialPageRoute(builder: (context) => TelaInicial()),
            );
          },
        ),
        title: const Text(
          'Configurações',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            _buildConfigButton(
              'Perfil',
              Icons.person,
              Colors.pink,
              () {},
            ),
            const SizedBox(height: 10),
            _buildConfigButton(
              'Minhas partidas',
              Icons.emoji_events,
              Colors.yellow,
              () {},
            ),
            const SizedBox(height: 10),
            _buildConfigButton(
              'Meus amigos',
              Icons.handshake,
              Colors.brown,
              () {},
            ),
            const SizedBox(height: 10),
            _buildConfigButton(
              'Importar partidas',
              Icons.desktop_windows,
              Colors.blue,
              () {},
            ),
            const SizedBox(height: 10),
            _buildConfigButton(
              'Treinar com a Ellen',
              Icons.person_pin_circle,
              Colors.amber,
              () {},
            ),
            const Spacer(),
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/4/45/Chess_piece_-_Knight_3D_icon.png',
              height: 50,
              width: 50,
            ),
          ],
        ),
      ),
    );
  }
}

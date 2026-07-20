import 'package:flutter/material.dart';
import 'home_page.dart';
import 'animals_page.dart';
void main() {
  runApp(const NatureExplorerApp());
}

class NatureExplorerApp extends StatelessWidget {
  const NatureExplorerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nature Explorer Kids',
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget menuButton(
      String text,
      IconData icon,
      VoidCallback onPressed,
      ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        width: 250,
        height: 60,
        child: ElevatedButton.icon(
          onPressed: onPressed,
          icon: Icon(icon, size: 28),
          label: Text(
            text,
            style: const TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade100,
      appBar: AppBar(
        title: const Text("🌿 Nature Explorer Kids"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.eco, size: 100, color: Colors.green),
            const SizedBox(height: 20),
            menuButton(
              "🐘 Животные",
              Icons.pets,
                  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AnimalsPage(),
                  ),
                );
              },
            ),
            menuButton("🐦 Птицы", Icons.flutter_dash, () {}),

            menuButton("🐟 Рыбы", Icons.water, () {}),

            menuButton("🎮 Игры", Icons.sports_esports, () {}),
          ],
        ),
      ),
    );
  }
}
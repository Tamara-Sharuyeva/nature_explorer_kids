import 'package:flutter/material.dart';
import '../globe/globe_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("🌿 Nature Explorer Kids"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.eco,
              size: 80,
              color: Colors.green,
            ),
            const SizedBox(height: 30),


            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const GlobePage(),
                  ),
                );
              },
              child: const Text(
                "🌍 Исследовать мир",
                style: TextStyle(fontSize: 22),
              ),
            ),

            ElevatedButton(
              onPressed: () {},
              child: const Text("🎮 Игры"),
            ),
          ],
        ),
      ),
    );
  }
}
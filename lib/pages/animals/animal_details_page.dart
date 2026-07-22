import 'package:flutter/material.dart';
import '../../models/animal.dart';

class AnimalDetailsPage extends StatelessWidget {
  final Animal animal;

  const AnimalDetailsPage({
    super.key,
    required this.animal,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(animal.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              animal.image,
              height: 220,
            ),
            const SizedBox(height: 20),
            Text(
              animal.name,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              animal.description,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  // Позже здесь будет воспроизведение звука
                },
                icon: const Icon(Icons.volume_up),
                label: const Text("🔊 Послушать"),
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Интересный факт"),
                      content: Text(
                        "Скоро здесь появится интересный факт о ${animal.name}.",
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.lightbulb_outline),
                label: const Text("💡 Интересный факт"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
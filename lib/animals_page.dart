import 'package:flutter/material.dart';

class AnimalsPage extends StatelessWidget {
  const AnimalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final animals = [
      "🦁 Лев",
      "🐯 Тигр",
      "🐘 Слон",
      "🦒 Жираф",
      "🐵 Обезьяна",
      "🦓 Зебра",
      "🐺 Волк",
      "🦊 Лиса",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("🐾 Животные"),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: animals.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: const Icon(Icons.pets, color: Colors.green),
              title: Text(
                animals[index],
                style: const TextStyle(fontSize: 22),
              ),
            ),
          );
        },
      ),
    );
  }
}
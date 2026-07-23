import 'package:flutter/material.dart';

import '../../models/animal.dart';

class InsectDetailsPage extends StatelessWidget {
  final Animal insect;

  const InsectDetailsPage({
    super.key,
    required this.insect,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(insect.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                insect.image,
                height: 220,
              ),
            ),
            const SizedBox(height: 20),

            Text(
              insect.description,
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 20),

            Text('🌍 Место обитания: ${insect.habitat}'),
            const SizedBox(height: 8),
            Text('🍽 Питание: ${insect.food}'),
            const SizedBox(height: 8),
            Text('📏 Размер: ${insect.size}'),
            const SizedBox(height: 8),
            Text('⚖ Вес: ${insect.weight}'),

            const SizedBox(height: 20),

            const Text(
              'Интересные факты:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            ...insect.facts.map(
                  (fact) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(fact),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
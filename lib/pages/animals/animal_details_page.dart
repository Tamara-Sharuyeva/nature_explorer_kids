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
          ],
        ),
      ),
    );
  }
}
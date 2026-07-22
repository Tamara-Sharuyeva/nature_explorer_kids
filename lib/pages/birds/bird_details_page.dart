import 'package:flutter/material.dart';
import '../../models/animal.dart';

class BirdDetailsPage extends StatelessWidget {
  final Animal bird;

  const BirdDetailsPage({
    super.key,
    required this.bird,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bird.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              bird.image,
              height: 220,
            ),
            const SizedBox(height: 20),
            Text(
              bird.name,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              bird.description,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
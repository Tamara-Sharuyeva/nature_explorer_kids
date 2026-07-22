import 'package:flutter/material.dart';
import '../../models/animal.dart';

class FishDetailsPage extends StatelessWidget {
  final Animal fish;

  const FishDetailsPage({
    super.key,
    required this.fish,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(fish.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              fish.image,
              height: 220,
            ),
            const SizedBox(height: 20),
            Text(
              fish.name,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              fish.description,
              style: const TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
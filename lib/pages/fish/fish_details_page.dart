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
backgroundColor: const Color(0xFFF7F9FC),
appBar: AppBar(
backgroundColor: Colors.transparent,
foregroundColor: Colors.black,
elevation: 0,
centerTitle: true,
title: Text(
fish.name,
style: const TextStyle(
fontSize: 26,
fontWeight: FontWeight.bold,
),
),
),
body: SingleChildScrollView(
padding: const EdgeInsets.all(18),
child: Column(
crossAxisAlignment: CrossAxisAlignment.stretch,
children: [
Card(
elevation: 8,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(24),
),
child: ClipRRect(
borderRadius: BorderRadius.circular(24),
child: Image.asset(
fish.image,
height: 320,
fit: BoxFit.contain,
),
),
),

const SizedBox(height: 24),

Text(
fish.name,
textAlign: TextAlign.center,
style: const TextStyle(
fontSize: 34,
fontWeight: FontWeight.bold,
),
),

const SizedBox(height: 18),

Text(
fish.description,
textAlign: TextAlign.center,
style: const TextStyle(
fontSize: 19,
height: 1.6,
),
),

const SizedBox(height: 25),

Card(
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(20),
),
child: Padding(
padding: const EdgeInsets.all(18),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
const Row(
children: [
Icon(Icons.public, color: Colors.green),
SizedBox(width: 8),
Text(
"Где живёт",
style: TextStyle(
fontSize: 18,
fontWeight: FontWeight.bold,
),
),
],
),

const SizedBox(height: 8),

Text(
fish.habitat,
style: const TextStyle(fontSize: 17),
),

const SizedBox(height: 18),

const Row(
children: [
Icon(Icons.restaurant, color: Colors.orange),
SizedBox(width: 8),
Text(
"Чем питается",
style: TextStyle(
fontSize: 18,
fontWeight: FontWeight.bold,
),
),
],
),

const SizedBox(height: 8),

Text(
fish.food,
style: const TextStyle(fontSize: 17),
),

const SizedBox(height: 18),

const Row(
children: [
Icon(Icons.straighten, color: Colors.blue),
SizedBox(width: 8),
Text(
"Размер",
style: TextStyle(
fontSize: 18,
fontWeight: FontWeight.bold,
),
),
],
),

  const SizedBox(height: 8),

  Text(
    fish.size,
    style: const TextStyle(fontSize: 17),
  ),

  const SizedBox(height: 18),

  const Row(
    children: [
      Icon(Icons.monitor_weight,
          color: Colors.deepPurple),
      SizedBox(width: 8),
      Text(
        "Вес",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ),

  const SizedBox(height: 8),

  Text(
    fish.weight,
    style: const TextStyle(fontSize: 17),
  ),
],
),
),
),

  const SizedBox(height: 25),

  Card(
    color: const Color(0xFFFFF8E1),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.lightbulb, color: Colors.orange),
              SizedBox(width: 8),
              Text(
                "Интересные факты",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          const SizedBox(height: 15),

          ...fish.facts.map(
                (fact) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "• ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      fact,
                      style: const TextStyle(
                        fontSize: 17,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  ),

  const SizedBox(height: 30),
],
),
),
);
}
}
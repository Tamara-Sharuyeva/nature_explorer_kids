import 'package:flutter/material.dart';
import '../../data/fish_data.dart';
import 'fish_details_page.dart';

class FishPage extends StatelessWidget {
  const FishPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("🐟 Рыбы"),
      ),
      body: ListView.builder(
        itemCount: fishData.length,
        itemBuilder: (context, index) {
          final fish = fishData[index];

          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.lightBlue.shade100,
                child: const Icon(Icons.water),
              ),
              title: Text(
                fish.name,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(fish.description),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FishDetailsPage(fish: fish),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
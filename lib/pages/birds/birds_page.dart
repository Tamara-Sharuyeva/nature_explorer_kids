import 'package:flutter/material.dart';
import '../../data/birds_data.dart';
import 'bird_details_page.dart';
class BirdsPage extends StatelessWidget {
  const BirdsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("🦜 Птицы"),
      ),
      body: ListView.builder(
        itemCount: birdsData.length,
        itemBuilder: (context, index) {
          final bird = birdsData[index];

          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.lightGreen.shade100,
                child: const Icon(Icons.flutter_dash),
              ),
              title: Text(
                bird.name,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(bird.description),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BirdDetailsPage(
                      bird: bird,
                    ),
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
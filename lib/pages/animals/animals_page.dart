import 'package:flutter/material.dart';
import '../../data/animals_data.dart';
import 'animal_details_page.dart';
class AnimalsPage extends StatelessWidget {
  const AnimalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final animals = animalsData;

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
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundColor: Colors.green.shade100,
                child: const Icon(
                  Icons.pets,
                  color: Colors.green,
                  size: 30,
                ),
              ),
              title: Text(
                animals[index].name,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              subtitle: Text(
                animals[index].description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),

              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnimalDetailsPage(
                      animal: animals[index],
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
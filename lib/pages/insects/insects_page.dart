import 'package:flutter/material.dart';

import '../../data/insects_data.dart';
import 'insect_details_page.dart';

class InsectsPage extends StatelessWidget {
  const InsectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🐞 Насекомые'),
      ),
      body: ListView.builder(
        itemCount: insectsData.length,
        itemBuilder: (context, index) {
          final insect = insectsData[index];

          return Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(insect.image),
              ),
              title: Text(insect.name),
              subtitle: Text(insect.description),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => InsectDetailsPage(insect: insect),
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
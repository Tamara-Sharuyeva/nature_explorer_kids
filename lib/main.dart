import 'package:flutter/material.dart';
import 'pages/home/home_page.dart';
import 'pages/animals/animals_page.dart';
void main() {
  runApp(const NatureExplorerApp());
}

class NatureExplorerApp extends StatelessWidget {
  const NatureExplorerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nature Explorer Kids',
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}


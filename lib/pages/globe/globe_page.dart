import 'dart:math' as math;
import 'package:flutter/material.dart';
import '../animals/animals_page.dart';
import '../birds/birds_page.dart';
import '../fish/fish_page.dart';
import '../insects/insects_page.dart';

class GlobePage extends StatefulWidget {
  const GlobePage({super.key});

  @override
  State<GlobePage> createState() => _GlobePageState();
}

class _GlobePageState extends State<GlobePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 90),
    )..repeat();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFBFE9FF),
      appBar: AppBar(
        title: const Text("🌍 Nature Explorer"),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [

            Container(
              width: 340,
              height: 340,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF6EC6FF),
                    Color(0xFF1976D2),
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.35),
                    blurRadius: 30,
                    spreadRadius: 10,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 40,
              right: 30,
              child: Icon(
                Icons.wb_sunny,
                color: Colors.amber,
                size: 80,
              ),
            ),

            Positioned(
              top: 90,
              left: 25,
              child: Icon(
                Icons.cloud,
                color: Colors.white,
                size: 60,
              ),
            ),

            Positioned(
              bottom: 90,
              right: 25,
              child: Icon(
                Icons.cloud,
                color: Colors.white70,
                size: 50,
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const AnimalsPage(),
                  ),
                );
              },
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..rotateZ(_controller.value * 2 * math.pi)
                      ..scale(1.0),
                    child: child,
                  );

                },
                child: Image.asset(
                  'assets/images/globe.png',
                  width: 340,
                  height: 340,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              top: 20,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const BirdsPage(),
                    ),
                  );
                },
                child: const Text("🦜 Птицы"),
              ),
            ),

            Positioned(
              left: 10,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const AnimalsPage(),
                    ),
                  );
                },
                child: const Text("🐘 Животные"),
              ),
            ),

            Positioned(
              right: 10,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const FishPage(),
                    ),
                  );
                },
                child: const Text("🐟 Море"),
              ),
            ),

            Positioned(
              bottom: 20,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const InsectsPage(),
                    ),
                  );
                },
                child: const Text("🐞 Насекомые"),
              ),
            ),

            Positioned(
              top: 15,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "Выберите место",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
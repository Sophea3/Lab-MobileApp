import 'package:flutter/material.dart';

void main() {
  runApp(const Exercise3App());
}

class Exercise3App extends StatelessWidget {
  const Exercise3App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove debug banner
      title: 'Exercise 3 - Profile Card',
      theme: ThemeData.dark(), // optional dark theme
      home: const Exercise3Page(),
    );
  }
}

class Exercise3Page extends StatelessWidget {
  const Exercise3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      appBar: AppBar(
        title: const Text("Exercise 3 - Profile Card"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Container(
          width: 300,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 35,
                backgroundColor: Colors.deepPurple,
                child: Text("D", style: TextStyle(fontSize: 26)),
              ),
              const SizedBox(height: 10),
              const Text(
                "KAING Sophea",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              const Text(
                "Computer Science Student",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  StatItem("8", "COURSES"),
                  StatItem("3.5", "GPA"),
                  StatItem("64", "CREDITS"),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.blue, // set button color to blue
                      ),
                      child: const Text("Follow"),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text("Message"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StatItem extends StatelessWidget {
  final String value;
  final String label;

  const StatItem(this.value, this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value, style: const TextStyle(color: Colors.white, fontSize: 16)),
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 12)),
      ],
    );
  }
}

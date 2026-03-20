import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'; // ✅ for web fix

void main() {
  runApp(const Exercise4App());
}

class Exercise4App extends StatelessWidget {
  const Exercise4App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product Card',
      theme: ThemeData.dark(),
      home: const Exercise4Page(),
    );
  }
}

class Exercise4Page extends StatelessWidget {
  const Exercise4Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      appBar: AppBar(
        title: const Text("Product Card"),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 20),

            ProductCard(
              name: "Wireless Speaker",
              desc: "Bluetooth 5.0",
              price: "\$49.99",
              image: "assets/images/speaker.jpg",
            ),

            ProductCard(
              name: "Headphones Pro",
              desc: "Noise Cancelling",
              price: "\$89.99",
              image: "assets/images/headphones.jpg",
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String name;
  final String desc;
  final String price;
  final String image;

  const ProductCard({
    super.key,
    required this.name,
    required this.desc,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ✅ IMAGE SECTION (FIXED)
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.asset(
              image,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // ✅ TEXT SECTION
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(desc, style: const TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
                Text(
                  price,
                  style: const TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),

          // ✅ BUTTON
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: const Text("Add to Cart"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ItemDetailScreen extends StatelessWidget {
  final String id;

  const ItemDetailScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final item = getItemById(id);

    return Scaffold(
      appBar: AppBar(title: Text("Item $id")),
      // body: Center(child: Text(item)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Item $id",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Text(item),
          ],
        ),
      ),
    );
  }

  String getItemById(String id) {
    final data = {
      "1": "This is Item 1",
      "2": "This is Item 2",
      "3": "This is Item 3",
    };

    return data[id] ?? "Item not found";
  }
}

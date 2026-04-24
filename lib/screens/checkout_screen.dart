import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Checkout")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context, 'success');
          },
          child: const Text("Complete Checkout"),
        ),
      ),
    );
  }
}

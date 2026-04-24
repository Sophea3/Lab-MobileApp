import 'package:flutter/material.dart';
import 'checkout_screen.dart';
import 'package:go_router/go_router.dart';

enum UiState { loading, empty, error, data }

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<String> products = const ['Item 1', 'Item 2', 'Item 3'];

  Future<void> openCheckout(BuildContext context) async {
    final result = await Navigator.push<String>(
      context,
      MaterialPageRoute(builder: (_) => const CheckoutScreen()),
    );

    if (result == 'success' && context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Checkout successful!'),
          backgroundColor: Colors.green,
        ),
      );
    }
  }

  Widget buildCatalogBody(BuildContext context, UiState state) {
    switch (state) {
      case UiState.loading:
        return const Center(child: CircularProgressIndicator());

      case UiState.empty:
        return const Center(child: Text('No products found'));

      case UiState.error:
        return const Center(child: Text('Something went wrong'));

      case UiState.data:
        return GridView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemBuilder: (context, index) {
            final item = products[index];
            return Container(
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(child: Text(item)),
            );
          },
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = UiState.error;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              context.go('/profile');
            },
          ),
        ],
      ),

      body: buildCatalogBody(context, state),

      floatingActionButton: FloatingActionButton(
        onPressed: () => openCheckout(context),
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}

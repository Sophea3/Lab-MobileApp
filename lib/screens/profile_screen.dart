import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_details.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isWide = constraints.maxWidth >= 600;

          if (!isWide) {
            return ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                ProfileHeader(),
                SizedBox(height: 16),
                ProfileDetails(),
              ],
            );
          }

          return Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: const [
                Expanded(child: ProfileHeader()),
                SizedBox(width: 16),
                Expanded(child: ProfileDetails()),
              ],
            ),
          );
        },
      ),
    );
  }
}

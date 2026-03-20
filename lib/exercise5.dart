import 'package:flutter/material.dart';

void main() {
  runApp(const Exercise5App());
}

class Exercise5App extends StatelessWidget {
  const Exercise5App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercise 5 - Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.blue, // changes AppBar background
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Greeting
            const Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Text(
                'Hello, Student! 👋',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),

            // Two-column cards
            Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Card(
                        color: Colors.blue.shade100,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: SizedBox(
                          height: 120,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  '12',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                                Text(
                                  'Courses',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black54,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  '3 in progress',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black45,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Icon overlay
                      Positioned(
                        top: 8,
                        right: 8,
                        child: Icon(
                          Icons.menu_book,
                          size: 36,
                          color: Colors.blue.shade300,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Stack(
                    children: [
                      Card(
                        color: Colors.pink.shade100,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: SizedBox(
                          height: 120,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  '3.8',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.pink,
                                  ),
                                ),
                                Text(
                                  'GPA',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black54,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  'Top 15%',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black45,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Icon overlay
                      Positioned(
                        top: 8,
                        right: 8,
                        child: Icon(
                          Icons.emoji_events,
                          size: 36,
                          color: Colors.pink.shade300,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Bottom ListTiles
            const ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Recent Activity'),
              subtitle: Text('2 new updates'),
              trailing: Icon(Icons.chevron_right),
            ),
            const ListTile(
              leading: Icon(Icons.assignment),
              title: Text('Assignments'),
              subtitle: Text('3 pending'),
              trailing: Icon(Icons.chevron_right),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              subtitle: Text('Profile & prefs'),
              trailing: Icon(Icons.chevron_right),
            ),
          ],
        ),
      ),
    );
  }
}

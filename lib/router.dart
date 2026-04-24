import 'package:go_router/go_router.dart';
import 'screens/home_screen.dart';
import 'screens/item_detail_screen.dart';
import 'screens/profile_screen.dart';

final router = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/home/item/:id',
      builder: (context, state) {
        final id = state.pathParameters['id']!;
        return ItemDetailScreen(id: id);
      },
    ),
  ],
);

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'route_name.dart';
import '../../features/auth/login/screens/login_screen.dart';
import '../../features/auth/register/screens/register_screen.dart';
import '../../features/onboading/screens/onboarding_screen.dart';
import '../../features/home/screens/home_screen.dart';

class AppRouter {
  static final GoRouter _router = GoRouter(
    initialLocation: AppRoute.onboarding.getPath,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: AppRoute.onboarding.getPath,
        name: AppRoute.onboarding.getName,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: AppRoute.login.getPath,
        name: AppRoute.login.getName,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoute.register.getPath,
        name: AppRoute.register.getName,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: AppRoute.home.getPath,
        name: AppRoute.home.getName,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
    errorBuilder: (context, state) => const ErrorScreen(),
  );

  static GoRouter get router => _router;
}

// Error screen for handling navigation errors
class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Error')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 64, color: Colors.red),
            SizedBox(height: 16),
            Text('Page not found', style: TextStyle(fontSize: 24)),
            SizedBox(height: 8),
            Text(
              'The requested page could not be found.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

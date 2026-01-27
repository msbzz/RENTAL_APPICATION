import 'package:go_router/go_router.dart';
import 'package:rental_application/views/auth/login_screen.dart';
import 'package:rental_application/views/onboarding/onboarding_screen.dart';
import 'package:rental_application/views/splash/splach_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'splash',
      builder: (context, state) => SplachScreen(),
    ),
    GoRoute(
      path: '/onboarding',
      name: 'splasch',
      builder: (context, state) => OnboardingScreen(),
    ),
    GoRoute(
      path: '/auth',
      name: 'splasch',
      builder: (context, state) => LoginScreen(),
    ),
  ],
);

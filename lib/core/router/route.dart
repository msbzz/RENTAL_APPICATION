import 'package:go_router/go_router.dart';
import 'package:rental_application/main_layout.dart';
import 'package:rental_application/views/auth/login_screen.dart';
import 'package:rental_application/views/home/home_screen.dart';
import 'package:rental_application/views/landlord/landlord_dashboard/landlord_dashboard_screen.dart';
import 'package:rental_application/views/landlord_layout.dart';
import 'package:rental_application/views/onboarding/onboarding_screen.dart';
import 'package:rental_application/views/splash/splash_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'splash',
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
      path: '/onboarding',
      name: 'onboarding',
      builder: (context, state) => OnboardingScreen(),
    ),
    GoRoute(
      path: '/auth',
      name: 'auth',
      builder: (context, state) => LoginScreen(),
    ),
    ShellRoute(
      builder: (context, state, child) =>
          MainLayout(location: state.uri.toString(), child: child),
      routes: [
        GoRoute(
          path: '/home',
          builder: (context, state) => const HomeScreen(),
          routes: const [],
        ),
      ],
    ),

    // landLord routes
    ShellRoute(
      builder: (context, state, child) =>
          LandlordLayout(location: state.uri.toString(), child: child),
      routes: [
        GoRoute(
          path: '/landlord/dashboard',
          builder: (context, state) => const LandlordDashboardScreen(),
        ),
      ],
    ),
  ],
);

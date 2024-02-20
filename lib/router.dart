import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_flutter/view/adaptive_nav.dart';
import 'package:learn_flutter/view/dashboard.dart';
import 'package:learn_flutter/view/home.dart';
import 'package:learn_flutter/view/profile.dart';

final rootKey = GlobalKey<NavigatorState>();
final shellKey = GlobalKey<NavigatorState>();
final router = GoRouter(
  navigatorKey: rootKey,
  initialLocation: '/home',
  routes: [
    ShellRoute(
      navigatorKey: shellKey,
      parentNavigatorKey: rootKey,
      builder: (context, state, child) => AdaptiveNav(child: child),
      routes: [
        GoRoute(
          path: '/home',
          builder: (context, state) => const Home(),
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) => const Profile(),
        ),
        GoRoute(
          path: '/dashboard',
          builder: (context, state) => const Dashboard(),
        )
      ],
    ),
  ],
);

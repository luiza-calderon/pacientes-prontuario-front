import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pacientes_prontuario_front/routing/routes.dart';
import 'package:pacientes_prontuario_front/ui/widgets/screens/home_screen.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: Routes.home,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
  ],
);

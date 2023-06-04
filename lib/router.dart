

import 'package:financeapp/ui/home_page/home_page.dart';
import 'package:financeapp/ui/saved_cards/saved_cards.dart';
import 'package:flutter/material.dart';


import 'package:go_router/go_router.dart';


final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'savedCards',
          builder: (BuildContext context, GoRouterState state) {
            return const SavedCards();
          },
        ),
      ],
    ),
  ],
);
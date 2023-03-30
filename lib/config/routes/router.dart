import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/views/edit_quiz_view.dart';
import '../../presentation/views/dictionary_view.dart';
import '../../presentation/views/home_view.dart';

final GoRouter router = GoRouter(
  initialLocation: HomeView.routeName,
  routes: <RouteBase>[
    GoRoute(
      path: HomeView.routeName,
      builder: (BuildContext context, GoRouterState state) => const HomeView(),
    ),
    GoRoute(
      path: '/edit',
      builder: (BuildContext context, GoRouterState state) =>
          const EditQuizView(),
    ),
    GoRoute(
      path: '/edit:id',
      builder: (BuildContext context, GoRouterState state) =>
          EditQuizView(quizId: state.params['id']),
    ),
    GoRoute(
      path: DictionaryView.routeName,
      builder: (BuildContext context, GoRouterState state) =>
          const DictionaryView(),
    ),
  ],
);

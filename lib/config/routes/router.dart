import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quizzylite/presentation/views/terms_of_use.dart';

import '../../presentation/views/about_app_view.dart';
import '../../presentation/views/edit_quiz_view.dart';
import '../../presentation/views/home_view.dart';

final GoRouter router = GoRouter(
  initialLocation: HomeView.routeName,
  routes: <RouteBase>[
    GoRoute(
      path: HomeView.routeName,
      builder: (BuildContext context, GoRouterState state) => const HomeView(),
    ),
    GoRoute(
      path: EditQuizView.routeName,
      builder: (BuildContext context, GoRouterState state) =>
          const EditQuizView(),
    ),
    GoRoute(
      path: '${EditQuizView.routeName}:id',
      builder: (BuildContext context, GoRouterState state) =>
          EditQuizView(quizId: state.params['id']),
    ),
    GoRoute(
      path: AboutAppView.routeName,
      builder: (BuildContext context, GoRouterState state) =>
          const AboutAppView(),
    ),
    GoRoute(
      path: TermsOfUseView.routeName,
      builder: (BuildContext context, GoRouterState state) =>
          const TermsOfUseView(),
    ),
  ],
);

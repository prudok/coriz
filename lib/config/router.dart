import 'package:go_router/go_router.dart';
import 'package:quizzylite/presentation/views/about_app_view.dart';
import 'package:quizzylite/presentation/views/edit_quiz_view.dart';
import 'package:quizzylite/presentation/views/home_view.dart';
import 'package:quizzylite/presentation/views/terms_of_use.dart';

final GoRouter router = GoRouter(
  initialLocation: HomeView.routeName,
  routes: <RouteBase>[
    GoRoute(
      path: HomeView.routeName,
      builder: (context, GoRouterState state) => const HomeView(),
    ),
    GoRoute(
      path: EditQuizView.routeName,
      builder: (context, GoRouterState state) => const EditQuizView(),
    ),
    GoRoute(
      path: '${EditQuizView.routeName}:id',
      builder: (context, GoRouterState state) => EditQuizView(
        quizId: state.params['id'],
      ),
    ),
    GoRoute(
      path: AboutAppView.routeName,
      builder: (context, GoRouterState state) => const AboutAppView(),
    ),
    GoRoute(
      path: TermsOfUseView.routeName,
      builder: (context, GoRouterState state) => const TermsOfUseView(),
    ),
  ],
);

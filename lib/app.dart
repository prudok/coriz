import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quizzylite/config/routes/router.dart';
import 'package:quizzylite/config/themes/themes.dart';

class QuizzLite extends ConsumerWidget {
  const QuizzLite({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: lightAmberTheme(),
      darkTheme: darkAmberTheme(),
    );
  }
}

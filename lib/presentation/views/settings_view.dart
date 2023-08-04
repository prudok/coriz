import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quizzylite/core/app_text_styles.dart';
import 'package:quizzylite/generated/l10n.dart';
import 'package:quizzylite/presentation/views/about_app_view.dart';
import 'package:quizzylite/presentation/views/terms_of_use.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  static const String widgetName = 'settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _OptionTile(
            title: S.of(context).termsOfUse,
            icon: Icons.info_outline,
            path: TermsOfUseView.routeName,
          ),
          _OptionTile(
            title: S.of(context).aboutProject,
            icon: Icons.info,
            path: AboutAppView.routeName,
          ),
        ],
      ),
    );
  }
}

class _OptionTile extends StatelessWidget {
  const _OptionTile({
    required this.title,
    required this.path,
    this.icon,
  });

  final String title;
  final String path;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.transparent,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      title: Text(title, style: AppTextStyles.bodyLarge),
      trailing: Icon(icon, size: 30),
      onTap: () {
        context.push(path);
      },
    );
  }
}

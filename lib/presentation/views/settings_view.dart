import 'package:flutter/material.dart';

import '../../core/constants/app_text_styles.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);
  static const String widgetName = 'Settings';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          OptionTile(title: 'Theme', icon: Icons.format_paint),
          OptionTile(title: 'Advanced Setting', icon: Icons.settings),
          OptionTile(title: 'About us'),
        ],
      ),
    );
  }
}

class OptionTile extends StatelessWidget {
  const OptionTile({super.key, required this.title, this.icon});

  final String title;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.transparent,
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      title: Text(title, style: AppTextStyles.bodyLarge),
      trailing: Icon(icon, size: 30),
      onTap: (){} //TODO: view new page when click,
    );
  }
}

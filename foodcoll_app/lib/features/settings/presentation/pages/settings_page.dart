import 'package:flutter/material.dart';
import '../../../../core/base_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BasePage(
      title: 'Configurações',
      currentIndex: 3,
      body: SizedBox.shrink(),
    );
  }
}
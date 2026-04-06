import 'package:flutter/material.dart';
import '../../../../core/base_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BasePage(
      title: 'Home',
      currentIndex: 0,
      body: SizedBox.shrink(),
    );
  }
}
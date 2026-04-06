import 'package:flutter/material.dart';
import '../../../../core/base_page.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BasePage(
      title: 'Favoritos',
      currentIndex: 2,
      body: SizedBox.shrink(),
    );
  }
}
import 'package:flutter/material.dart';
import '../../../../core/base_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BasePage(
      title: 'Buscar',
      currentIndex: 1,
      body: SizedBox.shrink(),
    );
  }
}
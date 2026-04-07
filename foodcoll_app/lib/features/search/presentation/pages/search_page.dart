import 'package:flutter/material.dart';
import '../../../../core/base_page.dart';
import '../widgets/search_input.dart';
import '../widgets/suggestion_button.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Buscar',
      currentIndex: 1,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchInput(
            onChanged: (value) {
              debugPrint(value);
            },
          ),
          SuggestionButton(
            onPressed: () {
              print("Botão de sugestão pressionado");
            },
          ),
        ],
      ),
    );
  }
}
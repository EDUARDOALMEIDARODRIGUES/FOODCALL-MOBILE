import 'package:flutter/material.dart';
import '../../../../core/base_page.dart';
import '../../../../core/state/favorites_controller.dart';
import '../../../../shared/widgets/page_header.dart';
import '../widgets/example_card.dart';

class CollocationsPage extends StatelessWidget {
  final String collocation;

  const CollocationsPage({super.key, required this.collocation});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Colocações',
      showBottomNavigation: false,
      body: AnimatedBuilder(
        animation: FavoritesController.instance,
        builder: (context, _) {
          final isFavorited = FavoritesController.instance.isFavorite(collocation);

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(context, isFavorited),
              const SizedBox(height: 24),
              _buildPronunciation(),
              const SizedBox(height: 8),
              _buildTranslation(),
              const SizedBox(height: 32),
              _buildExamples(),
              const SizedBox(height: 24),
              _buildLearnMore(),
            ],
          );
        },
      ),
    );
  }

  Widget _buildHeader(BuildContext context, bool isFavorited) {
    return Row(
      children: [
        Expanded(
          child: PageHeader(
            title: collocation,
            onBack: () => Navigator.pop(context),
          ),
        ),
        IconButton(
          onPressed: () => FavoritesController.instance.toggleFavorite(collocation),
          icon: Icon(
            isFavorited ? Icons.star : Icons.star_border,
            color: const Color(0xFF1FA7A6),
          ),
        ),
        IconButton(
          onPressed: () => debugPrint('Ouvir pronúncia de $collocation'),
          icon: const Icon(Icons.volume_up, color: Color(0xFF1FA7A6)),
        ),
      ],
    );
  }

  Widget _buildPronunciation() {
    return const Text(
      "/'Pronúncia/",
      style: TextStyle(
        fontFamily: 'Inter',
        fontSize: 16,
        color: Color(0xFF4A4F55),
      ),
    );
  }

  Widget _buildTranslation() {
    return const Text(
      'Tradução ainda não disponível',
      style: TextStyle(
        fontFamily: 'Inter',
        fontSize: 16,
        color: Colors.black,
      ),
    );
  }

Widget _buildExamples() {
  return const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Exemplo(s) de uso',
        style: TextStyle(
          fontFamily: 'Inter',
          fontSize: 18,
          color: Color(0xFF4A4F55),
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 12),
      ExampleCard(
        label: 'Inglês',
        text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent interdum malesuada viverra. Nunc et ipsum vel velit scelerisque tincidunt sit amet ac velit. ',
        backgroundColor: Color(0xFFA8D5D4),
      ),
      SizedBox(height: 16),
      ExampleCard(
        label: 'Português',
        text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent interdum malesuada viverra. Nunc et ipsum vel velit scelerisque tincidunt sit amet ac velit. ',
        backgroundColor: Color(0xFFE9EEF0),
      ),
    ],
  );
}

  Widget _buildLearnMore() {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: const Text(
        'Saber mais',
        style: TextStyle(
          fontFamily: 'Inter',
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: const Icon(Icons.keyboard_arrow_down_sharp, color: Colors.black),
      onTap: () => debugPrint('Expandir informações adicionais'),
    );
  }
}
import 'package:flutter/material.dart';
import '../../features/collocations/presentation/pages/collocations_page.dart';
import 'collocation_card.dart';

class CollocationList extends StatelessWidget {
  final List<String> collocations;
  final bool Function(String collocation)? isFavorited;
  final void Function(String collocation)? onFavoriteToggle;
  final void Function(String collocation)? onTap;

  const CollocationList({
    super.key,
    required this.collocations,
    this.isFavorited,
    this.onFavoriteToggle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    if (collocations.isEmpty) {
      return const Center(
        child: Text(
          'Nenhuma colocação encontrada.',
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 14,
            color: Color(0xFF4A4F55),
          ),
        ),
      );
    }

    return ListView.builder(
      itemCount: collocations.length,
      itemBuilder: (context, index) {
        final collocation = collocations[index];

        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CollocationsPage(
                  collocation: collocation,
                ),
              ),
            );
          },
          child: CollocationCard(
            collocation: collocation,
            translation: 'tradução ainda não disponível',
            isFavorited: isFavorited?.call(collocation) ?? false,
            onFavoriteToggle: onFavoriteToggle == null
                ? null
                : () => onFavoriteToggle!(collocation),
          ),
        );
      },
    );
  }
}
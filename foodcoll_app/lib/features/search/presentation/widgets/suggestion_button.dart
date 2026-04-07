import 'package:flutter/material.dart';

/// Botão utilizado na página de busca para enviar sugestões de collocations
class SuggestionButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const SuggestionButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: SizedBox(
        width: double.infinity,
        height: 48,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFE9EEF0),
            foregroundColor: const Color(0xFF4A4F55),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Text(
            'Enviar sugestão de colocação',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
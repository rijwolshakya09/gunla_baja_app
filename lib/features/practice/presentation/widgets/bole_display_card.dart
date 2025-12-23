import 'package:flutter/material.dart';
import '../../../../domain/entities/bole_entity.dart';

class BoleDisplayCard extends StatelessWidget {
  final BoleEntity bole;
  final int boleNumber;
  final int totalBoles;

  const BoleDisplayCard({
    super.key,
    required this.bole,
    required this.boleNumber,
    required this.totalBoles,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Bole Number Badge
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          decoration: BoxDecoration(
            color: const Color(0xFF6366F1).withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            'बोले $boleNumber/$totalBoles',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6366F1),
            ),
          ),
        ),

        const SizedBox(height: 32),

        // Main Bole Display
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF6366F1).withOpacity(0.1),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            children: [
              // Nepali Text (Large)
              Text(
                bole.textNepali,
                style: const TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1F2937),
                  height: 1.2,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 24),

              // Divider
              Container(
                width: 60,
                height: 4,
                decoration: BoxDecoration(
                  color: const Color(0xFF6366F1).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),

              const SizedBox(height: 24),

              // English Transliteration
              Text(
                bole.textEnglish,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[700],
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 16),

              // Pronunciation Guide
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.amber[50],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.volume_up, size: 20, color: Colors.amber[800]),
                    const SizedBox(width: 8),
                    Text(
                      bole.pronunciation,
                      style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        color: Colors.amber[900],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 24),

        // Tips Card
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.blue[100]!, width: 1),
          ),
          child: Row(
            children: [
              Icon(Icons.lightbulb_outline, color: Colors.blue[700], size: 24),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  'बोले बोल्ने अभ्यास गर्नुहोस् र ताल मिलाउनुहोस्',
                  style: TextStyle(fontSize: 14, color: Colors.blue[900]),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

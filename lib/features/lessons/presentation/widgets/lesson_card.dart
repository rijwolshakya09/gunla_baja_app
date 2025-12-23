import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../domain/entities/lesson_entity.dart';

class LessonCard extends StatelessWidget {
  final LessonEntity lesson;
  final VoidCallback onTap;

  const LessonCard({super.key, required this.lesson, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final isLocked = !lesson.isUnlocked;

    return GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Stack(
                children: [
                  // Content
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            // Icon
                            Container(
                              width: 56,
                              height: 56,
                              decoration: BoxDecoration(
                                color: isLocked
                                    ? Colors.grey[300]
                                    : const Color(0xFF6366F1).withOpacity(0.1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Icon(
                                isLocked ? Icons.lock : Icons.music_note,
                                color: isLocked
                                    ? Colors.grey[600]
                                    : const Color(0xFF6366F1),
                                size: 28,
                              ),
                            ),
                            const SizedBox(width: 16),

                            // Title & Status
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    lesson.titleNepali,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: isLocked
                                          ? Colors.grey[600]
                                          : const Color(0xFF1F2937),
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    lesson.titleEnglish,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Status Badge
                            if (lesson.isCompleted)
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.green[50],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.check_circle,
                                      size: 16,
                                      color: Colors.green[700],
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      'पूरा',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green[700],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            else if (isLocked)
                              Icon(
                                Icons.lock_outline,
                                color: Colors.grey[400],
                                size: 24,
                              ),
                          ],
                        ),

                        // Progress Bar (if unlocked and not completed)
                        if (!isLocked && !lesson.isCompleted) ...[
                          const SizedBox(height: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'प्रगति',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  Text(
                                    '${lesson.completedBoles}/${lesson.totalBoles}',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF6366F1),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(4),
                                child: LinearProgressIndicator(
                                  value: lesson.progressPercentage / 100,
                                  backgroundColor: Colors.grey[200],
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                        Color(0xFF6366F1),
                                      ),
                                  minHeight: 8,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ],
                    ),
                  ),

                  // Locked Overlay
                  if (isLocked)
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        )
        .animate(delay: Duration(milliseconds: 100 * lesson.orderIndex))
        .fadeIn(duration: 300.ms)
        .slideY(begin: 0.2, end: 0, duration: 300.ms);
  }
}

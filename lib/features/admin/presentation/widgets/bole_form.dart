import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import '../../providers/admin_provider.dart';

class BoleForm extends ConsumerStatefulWidget {
  const BoleForm({super.key});

  @override
  ConsumerState<BoleForm> createState() => _BoleFormState();
}

class _BoleFormState extends ConsumerState<BoleForm> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedLessonId;
  final _textNepaliController = TextEditingController();
  final _textEnglishController = TextEditingController();
  final _pronunciationController = TextEditingController();
  final _descNepaliController = TextEditingController();
  final _orderController = TextEditingController(text: '1');
  final _difficultyController = TextEditingController(text: '1');

  bool _isLoading = false;

  @override
  void dispose() {
    _textNepaliController.dispose();
    _textEnglishController.dispose();
    _pronunciationController.dispose();
    _descNepaliController.dispose();
    _orderController.dispose();
    _difficultyController.dispose();
    super.dispose();
  }

  Future<void> _submitForm() async {
    if (!_formKey.currentState!.validate()) return;
    if (_selectedLessonId == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select a lesson'),
          backgroundColor: Colors.orange,
        ),
      );
      return;
    }

    setState(() => _isLoading = true);

    try {
      await ref
          .read(adminServiceProvider.notifier)
          .addBole(
            lessonId: _selectedLessonId!,
            textNepali: _textNepaliController.text.trim(),
            textEnglish: _textEnglishController.text.trim(),
            pronunciation: _pronunciationController.text.trim(),
            descriptionNepali: _descNepaliController.text.trim().isEmpty
                ? null
                : _descNepaliController.text.trim(),
            orderIndex: int.parse(_orderController.text),
            difficultyLevel: int.parse(_difficultyController.text),
          );

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('✅ Bole added successfully!'),
            backgroundColor: Colors.green,
            duration: Duration(seconds: 2),
          ),
        );

        // Clear form
        _textNepaliController.clear();
        _textEnglishController.clear();
        _pronunciationController.clear();
        _descNepaliController.clear();
        _orderController.text = '1';
        _difficultyController.text = '1';
        _formKey.currentState!.reset();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('❌ Error: $e'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 4),
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final lessonsAsync = ref.watch(adminLessonsProvider);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFF6366F1).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.music_note,
                        color: Color(0xFF6366F1),
                        size: 32,
                      ),
                    ),
                    const Gap(16),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Add New Bole',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Add a bole to an existing lesson',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                const Gap(32),

                // Lesson Dropdown
                lessonsAsync.when(
                  data: (lessons) {
                    if (lessons.isEmpty) {
                      return Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.orange[50],
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.orange[200]!),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.warning, color: Colors.orange[700]),
                            const Gap(12),
                            const Expanded(
                              child: Text(
                                'No lessons available. Please create a lesson first!',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      );
                    }

                    return DropdownButtonFormField<String>(
                      initialValue: _selectedLessonId,
                      decoration: InputDecoration(
                        labelText: 'Select Lesson *',
                        prefixIcon: const Icon(Icons.school),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        filled: true,
                        fillColor: Colors.grey[50],
                      ),
                      items: lessons.map((lesson) {
                        final boleCount = lesson['boles']?[0]?['count'] ?? 0;
                        return DropdownMenuItem<String>(
                          value: lesson['id'],
                          child: Text(
                            '${lesson['title_nepali']} (L${lesson['level']} • $boleCount boles)',
                            style: const TextStyle(fontSize: 14),
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() => _selectedLessonId = value);
                      },
                      validator: (value) {
                        if (value == null) {
                          return 'Please select a lesson';
                        }
                        return null;
                      },
                    );
                  },
                  loading: () => const LinearProgressIndicator(),
                  error: (_, __) => const Text('Error loading lessons'),
                ),
                const Gap(16),

                // Bole Text Nepali
                _buildTextField(
                  controller: _textNepaliController,
                  label: 'Bole Text (Nepali) *',
                  hint: 'घे ने घेङ च',
                  icon: Icons.text_fields,
                ),
                const Gap(16),

                // Bole Text English
                _buildTextField(
                  controller: _textEnglishController,
                  label: 'Bole Text (English) *',
                  hint: 'Ghe Ne Gheng Cha',
                  icon: Icons.translate,
                ),
                const Gap(16),

                // Pronunciation
                _buildTextField(
                  controller: _pronunciationController,
                  label: 'Pronunciation *',
                  hint: 'ghay nay gheng cha',
                  icon: Icons.record_voice_over,
                ),
                const Gap(16),

                // Description
                _buildTextField(
                  controller: _descNepaliController,
                  label: 'Description (Nepali)',
                  hint: 'आधारभूत चार बीट ताल',
                  icon: Icons.description,
                  maxLines: 2,
                  required: false,
                ),
                const Gap(16),

                // Order and Difficulty
                Row(
                  children: [
                    Expanded(
                      child: _buildTextField(
                        controller: _orderController,
                        label: 'Order *',
                        hint: '1',
                        icon: Icons.sort,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    const Gap(16),
                    Expanded(
                      child: _buildTextField(
                        controller: _difficultyController,
                        label: 'Difficulty (1-5) *',
                        hint: '1',
                        icon: Icons.speed,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                const Gap(32),

                // Submit Button
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: _isLoading ? null : _submitForm,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6366F1),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 2,
                    ),
                    child: _isLoading
                        ? const SizedBox(
                            height: 24,
                            width: 24,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.white,
                            ),
                          )
                        : const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.check_circle, size: 24),
                              Gap(8),
                              Text(
                                'Add Bole',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required String hint,
    required IconData icon,
    int maxLines = 1,
    bool required = true,
    TextInputType? keyboardType,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey[300]!),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFF6366F1), width: 2),
        ),
        filled: true,
        fillColor: Colors.grey[50],
      ),
      maxLines: maxLines,
      keyboardType: keyboardType,
      validator: required
          ? (value) {
              if (value == null || value.trim().isEmpty) {
                return 'This field is required';
              }
              if (keyboardType == TextInputType.number) {
                final num = int.tryParse(value);
                if (num == null) {
                  return 'Must be a valid number';
                }
                if (label.contains('Difficulty') && (num < 1 || num > 5)) {
                  return 'Must be between 1 and 5';
                }
                if (num < 1) {
                  return 'Must be greater than 0';
                }
              }
              return null;
            }
          : null,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import '../../providers/admin_provider.dart';

class LessonForm extends ConsumerStatefulWidget {
  const LessonForm({super.key});

  @override
  ConsumerState<LessonForm> createState() => _LessonFormState();
}

class _LessonFormState extends ConsumerState<LessonForm> {
  final _formKey = GlobalKey<FormState>();
  final _titleNepaliController = TextEditingController();
  final _titleEnglishController = TextEditingController();
  final _descNepaliController = TextEditingController();
  final _descEnglishController = TextEditingController();
  final _levelController = TextEditingController(text: '1');
  final _orderController = TextEditingController(text: '1');

  bool _isLoading = false;

  @override
  void dispose() {
    _titleNepaliController.dispose();
    _titleEnglishController.dispose();
    _descNepaliController.dispose();
    _descEnglishController.dispose();
    _levelController.dispose();
    _orderController.dispose();
    super.dispose();
  }

  Future<void> _submitForm() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    try {
      await ref
          .read(adminServiceProvider.notifier)
          .addLesson(
            titleNepali: _titleNepaliController.text.trim(),
            titleEnglish: _titleEnglishController.text.trim(),
            descriptionNepali: _descNepaliController.text.trim().isEmpty
                ? null
                : _descNepaliController.text.trim(),
            descriptionEnglish: _descEnglishController.text.trim().isEmpty
                ? null
                : _descEnglishController.text.trim(),
            level: int.parse(_levelController.text),
            orderIndex: int.parse(_orderController.text),
          );

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('✅ Lesson added successfully!'),
            backgroundColor: Colors.green,
            duration: Duration(seconds: 2),
          ),
        );

        // Clear form
        _titleNepaliController.clear();
        _titleEnglishController.clear();
        _descNepaliController.clear();
        _descEnglishController.clear();
        _formKey.currentState!.reset();

        // Switch to "All Lessons" tab to see the result
        ref.read(adminTabProvider.notifier).state = 0;
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
                        Icons.add_circle,
                        color: Color(0xFF6366F1),
                        size: 32,
                      ),
                    ),
                    const Gap(16),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Add New Lesson',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Create a new lesson for students to learn',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                const Gap(32),

                // Title Nepali
                _buildTextField(
                  controller: _titleNepaliController,
                  label: 'Title (Nepali) *',
                  hint: 'प्राथमिक तालहरू',
                  icon: Icons.title,
                ),
                const Gap(16),

                // Title English
                _buildTextField(
                  controller: _titleEnglishController,
                  label: 'Title (English) *',
                  hint: 'Basic Rhythms',
                  icon: Icons.translate,
                ),
                const Gap(16),

                // Description Nepali
                _buildTextField(
                  controller: _descNepaliController,
                  label: 'Description (Nepali)',
                  hint: 'गुँला बाजाको आधारभूत तालहरू सिक्नुहोस्',
                  icon: Icons.description,
                  maxLines: 3,
                  required: false,
                ),
                const Gap(16),

                // Description English
                _buildTextField(
                  controller: _descEnglishController,
                  label: 'Description (English)',
                  hint: 'Learn the fundamental rhythms of Gunla Baja',
                  icon: Icons.description,
                  maxLines: 3,
                  required: false,
                ),
                const Gap(16),

                // Level and Order
                Row(
                  children: [
                    Expanded(
                      child: _buildTextField(
                        controller: _levelController,
                        label: 'Level *',
                        hint: '1',
                        icon: Icons.layers,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    const Gap(16),
                    Expanded(
                      child: _buildTextField(
                        controller: _orderController,
                        label: 'Order Index *',
                        hint: '1',
                        icon: Icons.sort,
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
                                'Add Lesson',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                  ),
                ),

                const Gap(16),

                // Help text
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.blue[100]!),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.info_outline, color: Colors.blue[700]),
                      const Gap(12),
                      Expanded(
                        child: Text(
                          'After creating a lesson, add boles to it from the "Add Bole" tab.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.blue[900],
                          ),
                        ),
                      ),
                    ],
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
                if (int.tryParse(value) == null) {
                  return 'Must be a valid number';
                }
                if (int.parse(value) < 1) {
                  return 'Must be greater than 0';
                }
              }
              return null;
            }
          : null,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import '../../providers/admin_provider.dart';

class EnhancedBoleForm extends ConsumerStatefulWidget {
  const EnhancedBoleForm({super.key});

  @override
  ConsumerState<EnhancedBoleForm> createState() => _EnhancedBoleFormState();
}

class _EnhancedBoleFormState extends ConsumerState<EnhancedBoleForm> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedLessonId;
  final _textNepaliController = TextEditingController();
  final _textEnglishController = TextEditingController();
  final _pronunciationController = TextEditingController();
  final _descNepaliController = TextEditingController();
  final _orderController = TextEditingController(text: '1');
  final _difficultyController = TextEditingController(text: '1');

  // NEW FIELDS for intermediate/advanced
  String _patternType = 'single'; // single, repeated, variation
  final _repetitionController = TextEditingController(text: '1');
  bool _isVariation = false;
  String? _parentBoleId;
  final _tempoController = TextEditingController();
  final _timeSignatureController = TextEditingController();

  bool _isLoading = false;

  @override
  void dispose() {
    _textNepaliController.dispose();
    _textEnglishController.dispose();
    _pronunciationController.dispose();
    _descNepaliController.dispose();
    _orderController.dispose();
    _difficultyController.dispose();
    _repetitionController.dispose();
    _tempoController.dispose();
    _timeSignatureController.dispose();
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
          .addEnhancedBole(
            lessonId: _selectedLessonId!,
            textNepali: _textNepaliController.text.trim(),
            textEnglish: _textEnglishController.text.trim(),
            pronunciation: _pronunciationController.text.trim(),
            descriptionNepali: _descNepaliController.text.trim().isEmpty
                ? null
                : _descNepaliController.text.trim(),
            orderIndex: int.parse(_orderController.text),
            difficultyLevel: int.parse(_difficultyController.text),
            // NEW PARAMETERS
            patternType: _patternType,
            repetitionCount: int.parse(_repetitionController.text),
            isVariation: _isVariation,
            parentBoleId: _parentBoleId,
            tempoBpm: _tempoController.text.isEmpty
                ? null
                : int.parse(_tempoController.text),
            timeSignature: _timeSignatureController.text.isEmpty
                ? null
                : _timeSignatureController.text.trim(),
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
        _repetitionController.text = '1';
        _tempoController.clear();
        _timeSignatureController.clear();
        _patternType = 'single';
        _isVariation = false;
        _parentBoleId = null;
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
          constraints: const BoxConstraints(maxWidth: 900),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                _buildHeader(),
                const Gap(32),

                // Lesson Selection
                _buildLessonDropdown(lessonsAsync),
                const Gap(16),

                // Pattern Type Selection (NEW)
                _buildPatternTypeSelector(),
                const Gap(16),

                // Bole Text Fields
                _buildTextField(
                  controller: _textNepaliController,
                  label: 'Bole Text (Nepali) *',
                  hint: 'घेनेघेचाँ घेनेघेचाँ घेनेघेचाँ',
                  icon: Icons.text_fields,
                  helperText: 'Write the complete pattern with repetitions',
                ),
                const Gap(16),

                _buildTextField(
                  controller: _textEnglishController,
                  label: 'Bole Text (English) *',
                  hint: 'Gheneghechan Gheneghechan Gheneghechan',
                  icon: Icons.translate,
                ),
                const Gap(16),

                _buildTextField(
                  controller: _pronunciationController,
                  label: 'Pronunciation *',
                  hint: 'ghay-nay-ghay-chan',
                  icon: Icons.record_voice_over,
                ),
                const Gap(16),

                // Repetition Count (if pattern is repeated)
                if (_patternType == 'repeated') ...[
                  Row(
                    children: [
                      Expanded(
                        child: _buildTextField(
                          controller: _repetitionController,
                          label: 'Repetition Count *',
                          hint: '4',
                          icon: Icons.repeat,
                          keyboardType: TextInputType.number,
                          helperText:
                              'How many times does this pattern repeat?',
                        ),
                      ),
                    ],
                  ),
                  const Gap(16),
                ],

                // Variation Fields (if it's a variation)
                if (_isVariation) ...[
                  _buildParentBoleSelector(lessonsAsync),
                  const Gap(16),
                ],

                // Description
                _buildTextField(
                  controller: _descNepaliController,
                  label: 'Description (Nepali)',
                  hint: 'मुख्य ताल - चार पटक दोहोरिने',
                  icon: Icons.description,
                  maxLines: 2,
                  required: false,
                ),
                const Gap(16),

                // Tempo and Time Signature (Advanced)
                ExpansionTile(
                  title: const Text('Advanced Settings (Optional)'),
                  leading: const Icon(Icons.tune),
                  children: [
                    const Gap(8),
                    Row(
                      children: [
                        Expanded(
                          child: _buildTextField(
                            controller: _tempoController,
                            label: 'Tempo (BPM)',
                            hint: '120',
                            icon: Icons.speed,
                            keyboardType: TextInputType.number,
                            required: false,
                            helperText: 'Beats per minute',
                          ),
                        ),
                        const Gap(16),
                        Expanded(
                          child: _buildTextField(
                            controller: _timeSignatureController,
                            label: 'Time Signature',
                            hint: '4/4 or 7/8',
                            icon: Icons.music_note,
                            required: false,
                          ),
                        ),
                      ],
                    ),
                    const Gap(16),
                  ],
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
                        hint: '2',
                        icon: Icons.speed,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                const Gap(32),

                // Variation Toggle
                CheckboxListTile(
                  title: const Text('This is a variation of another bole'),
                  value: _isVariation,
                  onChanged: (value) {
                    setState(() => _isVariation = value ?? false);
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                const Gap(16),

                // Submit Button
                _buildSubmitButton(),
                const Gap(16),

                // Help Card
                _buildHelpCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
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
              'Add Bole (Enhanced)',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'For intermediate and advanced taals',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPatternTypeSelector() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Pattern Type',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const Gap(12),
            SegmentedButton<String>(
              segments: const [
                ButtonSegment(
                  value: 'single',
                  label: Text('Single'),
                  icon: Icon(Icons.looks_one),
                ),
                ButtonSegment(
                  value: 'repeated',
                  label: Text('Repeated'),
                  icon: Icon(Icons.repeat),
                ),
                ButtonSegment(
                  value: 'variation',
                  label: Text('Variation'),
                  icon: Icon(Icons.change_circle),
                ),
              ],
              selected: {_patternType},
              onSelectionChanged: (Set<String> newSelection) {
                setState(() {
                  _patternType = newSelection.first;
                });
              },
            ),
            const Gap(8),
            Text(
              _getPatternTypeDescription(),
              style: TextStyle(fontSize: 12, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }

  String _getPatternTypeDescription() {
    switch (_patternType) {
      case 'single':
        return 'A single bole pattern played once';
      case 'repeated':
        return 'A pattern that repeats multiple times (e.g., घे ने घे ने घे ने)';
      case 'variation':
        return 'A variation or modification of an existing bole';
      default:
        return '';
    }
  }

  Widget _buildLessonDropdown(
    AsyncValue<List<Map<String, dynamic>>> lessonsAsync,
  ) {
    return lessonsAsync.when(
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
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
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
            if (value == null) return 'Please select a lesson';
            return null;
          },
        );
      },
      loading: () => const LinearProgressIndicator(),
      error: (_, __) => const Text('Error loading lessons'),
    );
  }

  Widget _buildParentBoleSelector(
    AsyncValue<List<Map<String, dynamic>>> lessonsAsync,
  ) {
    // Would need to fetch boles for selected lesson
    return FutureBuilder<List<Map<String, dynamic>>>(
      future: _selectedLessonId != null
          ? ref
                .read(adminServiceProvider.notifier)
                .getBolesForLesson(_selectedLessonId!)
          : null,
      builder: (context, snapshot) {
        if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const SizedBox();
        }

        return DropdownButtonFormField<String>(
          initialValue: _parentBoleId,
          decoration: InputDecoration(
            labelText: 'Parent Bole (for variation)',
            prefixIcon: const Icon(Icons.link),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            filled: true,
            fillColor: Colors.grey[50],
          ),
          items: snapshot.data!.map((bole) {
            return DropdownMenuItem<String>(
              value: bole['id'],
              child: Text(
                '${bole['text_nepali']} - ${bole['text_english']}',
                style: const TextStyle(fontSize: 14),
                overflow: TextOverflow.ellipsis,
              ),
            );
          }).toList(),
          onChanged: (value) {
            setState(() => _parentBoleId = value);
          },
        );
      },
    );
  }

  Widget _buildSubmitButton() {
    return SizedBox(
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
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
      ),
    );
  }

  Widget _buildHelpCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blue[100]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.lightbulb_outline, color: Colors.blue[700]),
              const Gap(8),
              Text(
                'Tips for Intermediate Taals',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900],
                ),
              ),
            ],
          ),
          const Gap(8),
          Text(
            '• Use "Repeated" for patterns like: घे ने घे ने घे ने (appears 3 times)\n'
            '• Set repetition count to show how many times it repeats\n'
            '• Create main boles first, then add variations\n'
            '• For tempo-specific taals, add BPM and time signature',
            style: TextStyle(
              fontSize: 12,
              color: Colors.blue[800],
              height: 1.5,
            ),
          ),
        ],
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
    String? helperText,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        helperText: helperText,
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

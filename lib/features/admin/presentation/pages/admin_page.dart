import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/lesson_form.dart';
import '../widgets/bole_form.dart';
import '../widgets/lessons_list.dart';
import '../../providers/admin_provider.dart';

class AdminPage extends ConsumerWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTab = ref.watch(adminTabProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Panel - गुँला बाजा'),
        backgroundColor: const Color(0xFF6366F1),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              ref.read(adminLessonsProvider.notifier).refresh();
            },
            tooltip: 'Refresh',
          ),
        ],
      ),
      body: Row(
        children: [
          // Sidebar Navigation
          Container(
            width: 250,
            color: Colors.grey[100],
            child: ListView(
              children: [
                const SizedBox(height: 20),
                _buildNavItem(
                  context: context,
                  ref: ref,
                  index: 0,
                  icon: Icons.list,
                  title: 'All Lessons',
                  isSelected: selectedTab == 0,
                ),
                _buildNavItem(
                  context: context,
                  ref: ref,
                  index: 1,
                  icon: Icons.add_circle,
                  title: 'Add Lesson',
                  isSelected: selectedTab == 1,
                ),
                _buildNavItem(
                  context: context,
                  ref: ref,
                  index: 2,
                  icon: Icons.music_note,
                  title: 'Add Bole',
                  isSelected: selectedTab == 2,
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.home, color: Color(0xFF6366F1)),
                  title: const Text('Back to App'),
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),
          ),

          const VerticalDivider(thickness: 1, width: 1),

          // Content Area
          Expanded(
            child: IndexedStack(
              index: selectedTab,
              children: const [AdminLessonsList(), LessonForm(), BoleForm()],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required BuildContext context,
    required WidgetRef ref,
    required int index,
    required IconData icon,
    required String title,
    required bool isSelected,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: isSelected ? const Color(0xFF6366F1) : Colors.grey[600],
      ),
      title: Text(
        title,
        style: TextStyle(
          color: isSelected ? const Color(0xFF6366F1) : Colors.grey[800],
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      selected: isSelected,
      selectedTileColor: const Color(0xFF6366F1).withOpacity(0.1),
      onTap: () {
        ref.read(adminTabProvider.notifier).state = index;
      },
    );
  }
}

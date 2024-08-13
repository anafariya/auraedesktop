import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PrescanPage extends StatefulWidget {
  const PrescanPage({super.key});

  @override
  State<PrescanPage> createState() => _PrescanPageState();
}

class _PrescanPageState extends State<PrescanPage> {
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildStepIndicator(),
              const SizedBox(height: 24),
              _buildOptionsRow(),
              const SizedBox(height: 16),
              _buildNote(),
              const Spacer(),
              _buildNextButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStepIndicator() {
    return Row(
      children: [
        _buildStepItem('INSTRUCTION', isActive: true, isDone: true),
        _buildStepItem('POSTURE', isActive: true),
        _buildStepItem('ACTIVATION'),
      ],
    );
  }

  Widget _buildStepItem(String title, {bool isActive = false, bool isDone = false}) {
    return Expanded(
      child: Column(
        children: [
          Icon(
            isDone ? Icons.check_circle : Icons.circle,
            color: isActive ? Colors.orange : Colors.grey,
          ),
          Text(
            title,
            style: TextStyle(
              color: isActive ? Colors.black : Colors.grey,
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOptionsRow() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildOptionItem('RESTING', 0, Colors.pink[50]!, 'assets/resting.svg'),
          const SizedBox(width: 16),
          _buildOptionItem('STANDING', 1, Colors.yellow[50]!, 'assets/standing.svg'),
          const SizedBox(width: 16),
          _buildOptionItem('AFTER EXERCISE', 2, Colors.blue[50]!, 'assets/after_exercise.svg'),
          const SizedBox(width: 16),
          _buildOptionItem('AFTER WALKING', 3, Colors.blue[50]!, 'assets/after_walking.svg'),
        ],
      ),
    );
  }

  Widget _buildOptionItem(String title, int index, Color color, String svgPath) {
    return InkWell(
      onTap: () => setState(() => _selectedIndex = index),
      child: Container(
        width: 150, // Adjust this value as needed
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
          border: _selectedIndex == index ? Border.all(color: Colors.blue, width: 2) : null,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              svgPath,
              width: 48,
              height: 48,
            ),
            const SizedBox(height: 8),
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  Widget _buildNote() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Text(
        'Note: Choose the posture that best suits you for accurate scanning.',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }

  Widget _buildNextButton() {
    return ElevatedButton(
      onPressed: _selectedIndex != -1 ? () {} : null,
      child: const Text('Next'),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
        backgroundColor: Colors.blue[50],
        foregroundColor: Colors.blue,
        disabledBackgroundColor: Colors.grey[300],
        disabledForegroundColor: Colors.grey,
      ),
    );
  }
}
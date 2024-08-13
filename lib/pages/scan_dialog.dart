import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'prescan_page.dart';

class ScanDialog1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 580,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Ensures auto height
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildHeader(context),
            SizedBox(height: 16),
            _buildStepIndicator(), // Add this line to include the circles
            SizedBox(height: 16),
            _buildInstructions(),
            SizedBox(height: 24),
            _buildNextButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'Face Vital Instructions',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        IconButton(
          icon: Icon(Icons.close_outlined),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    );
  }
 Widget _buildStepIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildCircle(true, '1'),
        SizedBox(
          width: 40,
        ),
        _buildCircle(false, '2'),
        SizedBox(
          width: 40,
        ),
        _buildCircle(false, '3'),
      ],
    );
  }

  Widget _buildCircle(bool isActive, String label) {
    return Column(
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: isActive ? Color(0xFFDC7D57) : Colors.grey[300]!,
              width: 2,
            ),
            color: Colors.transparent,
          ),
          child: Center(
            child: Text(
              label,
              style: GoogleFonts.poppins(
                color: isActive
                    ? Color.fromARGB(255, 3, 97, 173)
                    : Colors.grey[400],
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          label == '1'
              ? 'Instruction'
              : label == '2'
                  ? 'Posture'
                  : 'Activation',
          style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
            color: isActive ? Colors.black : Colors.grey[400],
          ),
        ),
      ],
    );
  }

  Widget _buildInstructions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        BulletList([
          'Find a well-lit area for accurate results.',
          'Hold your device at eye level for optimal scanning.',
          'Remove accessories like glasses or hats for clarity.',
          'Ensure your face is visible and centred in the frame.',
          'Stay still during the scanning process for accuracy.',
        ]),
         SizedBox(height: 30),
      ],
    );

  }

  Widget _buildNextButton(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 48,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => PrescanPage()),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFDC7D57),
          padding: EdgeInsets.symmetric(vertical: 16),
        ),
        child: Text(
          'Next',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class BulletList extends StatelessWidget {
  final List<String> items;

  BulletList(this.items);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .asMap()
          .entries
          .map((entry) => Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  '${entry.key + 1}. ${entry.value}',
                  style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, height: 3), // Reduced font size
                ),
              ))
          .toList(),
    );
  }
}
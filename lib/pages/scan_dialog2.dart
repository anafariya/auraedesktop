import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScanDialog2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 580,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: SingleChildScrollView( // Added SingleChildScrollView
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
              _buildNoteBox(), // Add this line for the note box
              SizedBox(height: 24),
              _buildScanSection(), // Add this line for the scan button section
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Column(
      children: [
        Row(
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
              icon: Icon(Icons.close),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
                SizedBox(height: 16),

      ],
    );
  }
  // This is the updated widget for the three circles
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
                SizedBox(height: 24),

        Text(
          'ACTIVATE CAMERA FOR SCANNING:',
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 16),
        BulletList([
          'Tap the camera icon below to start scanning.',
          'Grant camera permissions if prompted.',
          'Position your face within the frame.',
          'Hold steady until the scan is complete.',
        ]),
      ],
    );
  }

  Widget _buildNoteBox() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'NOTE:',
            style:
                GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 8), // Adding space between "NOTE:" and the instructions
          Text(
            'Your data is handled securely. For more information, view our privacy policy.',
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Color(0x99213D68), // Color #213D6899
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }

  Widget _buildScanSection() {
    return Column(
      children: [
        Container(
          width: 88, // Adjust the size as needed
          height: 88, // Adjust the size as needed
          decoration: BoxDecoration(
            color: Color(0xFFF2F6FA), // Background color
            shape: BoxShape.circle, // Circular shape
          ),
          child: Center(
            child: SvgPicture.string(
              '''<svg width="44" height="44" viewBox="0 0 44 44" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M13.6955 7.44384C14.5665 3.75246 17.954 1 22 1C26.046 1 29.4335 3.75246 30.3046 7.44384L30.6685 7.51792C36.2341 8.65071 40.6662 12.756 42.1168 18.1221C43.2944 22.4781 43.2944 27.0577 42.1168 31.4136C40.6662 36.7797 36.2341 40.885 30.6685 42.0178L29.605 42.2343C24.5889 43.2552 19.4111 43.2552 14.395 42.2343L13.3315 42.0178C7.76593 40.885 3.33379 36.7797 1.88317 31.4136C0.70561 27.0577 0.705611 22.4781 1.88317 18.1221C3.33379 12.756 7.76593 8.65071 13.3315 7.51792L13.6955 7.44384Z" stroke="#2A2A2A" stroke-width="1.5" stroke-linejoin="round"/>
              <path d="M16.1714 24.3021C16.1714 21.0804 18.7831 18.4688 22.0047 18.4688C25.2264 18.4688 27.8381 21.0804 27.8381 24.3021C27.8381 27.5237 25.2264 30.1354 22.0047 30.1354C18.7831 30.1354 16.1714 27.5237 16.1714 24.3021Z" stroke="#2A2A2A" stroke-width="1.5"/>
              </svg>''',
              height: 44,
              width: 44,
            ),
          ),
        ),
        SizedBox(height: 16),
      TextButton(
        onPressed: (){},
        
          child: Text(
            'Start Scanning',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF213D68), // Color #213D68
            ),
          ),
        ),
      ],
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
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 2.5,
                  ),
                ),
              ))
          .toList(),
    );
  }
}

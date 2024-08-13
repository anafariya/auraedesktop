import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsForm extends StatefulWidget {
  const DetailsForm({super.key});

  @override
  State<DetailsForm> createState() => _DetailsFormState();
}

class _DetailsFormState extends State<DetailsForm> {
  final _formKey = GlobalKey<FormState>();
  String _selectedGender = '';
  int _selectedDay = 1;
  int _selectedMonth = 1;
  int _selectedYear = 2000;
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  bool _isFormFilled = false;

  void _checkFormFilled() {
    setState(() {
      _isFormFilled = _selectedGender.isNotEmpty &&
          _heightController.text.isNotEmpty &&
          _weightController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 235, 235),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 430),
          child: Container(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Text(
                        "You're almost here,\nJust one step close to monitor your health",
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 24),

                      // Gender
                      Text(
                        'Gender',
                        style: GoogleFonts.poppins(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedGender = 'Male';
                                  _checkFormFilled();
                                });
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  color: _selectedGender == 'Male'
                                      ? Color(0xDC7D571A).withOpacity(0.2)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.male, size: 20),
                                      SizedBox(height: 4),
                                      Text(
                                        'Male',
                                        style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: _selectedGender == 'Male'
                                              ? Color(0xDC7D571A)
                                              : Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedGender = 'Female';
                                  _checkFormFilled();
                                });
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  color: _selectedGender == 'Female'
                                      ? Color(0xDC7D571A).withOpacity(0.2)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.female, size: 20),
                                      SizedBox(height: 4),
                                      Text(
                                        'Female',
                                        style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: _selectedGender == 'Female'
                                              ? Color(0xDC7D571A)
                                              : Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),

                      // Date of Birth
                      Text(
                        'Date of Birth',
                        style: GoogleFonts.poppins(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: DropdownButtonFormField<int>(
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                      vertical:
                                          2.0), // Reduced vertical padding
                                  border: InputBorder.none,
                                ),
                                value: _selectedDay,
                                items: List.generate(31, (index) => index + 1)
                                    .map((day) => DropdownMenuItem(
                                          value: day,
                                          child: Text(day.toString()),
                                        ))
                                    .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _selectedDay = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: DropdownButtonFormField<int>(
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                      vertical:
                                          2.0), // Reduced vertical padding
                                  border: InputBorder.none,
                                ),
                                value: _selectedMonth,
                                items: List.generate(12, (index) => index + 1)
                                    .map((month) => DropdownMenuItem(
                                          value: month,
                                          child: Text(month.toString()),
                                        ))
                                    .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _selectedMonth = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: DropdownButtonFormField<int>(
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                      vertical:
                                          2.0), // Reduced vertical padding
                                  border: InputBorder.none,
                                ),
                                value: _selectedYear,
                                items:
                                    List.generate(100, (index) => 1923 + index)
                                        .map((year) => DropdownMenuItem(
                                              value: year,
                                              child: Text(year.toString()),
                                            ))
                                        .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _selectedYear = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 24),

                      // Height
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Height ',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: '*',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: _heightController,
                        decoration: InputDecoration(
                          hintText: 'Enter your height in cm',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your height';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          _checkFormFilled();
                        },
                      ),
                      SizedBox(height: 24),

                      // Weight
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Weight ',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: '*',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: _weightController,
                        decoration: InputDecoration(
                          hintText: 'Enter your weight in kg',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your weight';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          _checkFormFilled();
                        },
                      ),
                      SizedBox(height: 24),

                      // Next Button
                      Center(
                        child: Container(
                          width: 500,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                // Process data
                                Navigator.pushNamed(context, '/homepage');
                              }
                            },
                            child: Text(
                              'Next',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _isFormFilled
                                  ? Color(0xFFDC7D57)
                                  : Color(0x7A8BA4BF),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 18),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

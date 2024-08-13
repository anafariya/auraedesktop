import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'scan_dialog.dart';
import 'scan_dialog2.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi Akshay',
                      style: GoogleFonts.poppins(
                        fontSize: 40,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Get started with monitoring your health journey by taking scans',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Container(
                          width: 317,
                          height: 298,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/face_scan.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Face Scan',
                                style: GoogleFonts.poppins(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                '60 seconds contactless vital scan using your smartphone’s front camera. It is as Simple as taking a selfie',
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(height: 16),
                              Container(
                                width: 468,
                                height: 40,
                                child: ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return ScanDialog1(); // Show the modal dialog
                                      },
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFDC7D57),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    'Dialog Box 1',
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                                 SizedBox(height: 16),
                              Container(
                                width: 468,
                                height: 40,
                                child: ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return ScanDialog2(); // Show the modal dialog
                                      },
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFDC7D57),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    'Dialog Box 2',
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    Text(
                      'Articles',
                      style: GoogleFonts.poppins(
                        fontSize: 36,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                            
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                    image: AssetImage('assets/article1.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                height: 220,
                              ),
                              Container(
                                color: Color(0xFFECF7FF),
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  'Discover the health engagement insurtech ecosystem',
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                    image: AssetImage('assets/article2.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                height: 220,
                              ),
                              Container(
                                color: Color(0xFFECF7FF),
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  'What are the benefits of eating healthy?',
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                  ],
                ),
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Health Tips',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(248, 248, 248, 1.0),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.string(
                          '''<svg width="36" height="58" viewBox="0 0 36 58" fill="none" xmlns="http://www.w3.org/2000/svg">
               <path d="M18 0.563099C16.5496 0.563099 15.1586 1.13927 14.133 2.16486C13.1074 3.19045 12.5312 4.58145 12.5312 6.03185C12.5312 7.48225 13.1074 8.87325 14.133 9.89884C15.1586 10.9244 16.5496 11.5006 18 11.5006C19.4504 11.5006 20.8414 10.9244 21.867 9.89884C22.8926 8.87325 23.4688 7.48225 23.4688 6.03185C23.4688 4.58145 22.8926 3.19045 21.867 2.16486C20.8414 1.13927 19.4504 0.563099 18 0.563099ZM2.88438 0.571849C2.45346 0.533141 2.02075 0.623083 1.64095 0.830301C1.26116 1.03752 0.951339 1.35271 0.750675 1.736C0.550012 2.1193 0.467517 2.5535 0.513621 2.98368C0.559724 3.41386 0.732356 3.82072 1.00969 4.15279L11.4375 16.6522V22.799C5.4525 23.475 0.5 25.1309 0.5 27.9068C0.5 30.6828 5.4525 32.3387 11.4375 33.0168V33.1612L7.10625 54.824C7.01423 55.3837 7.14314 55.9571 7.4658 56.4235C7.78846 56.8899 8.27964 57.2128 8.83576 57.324C9.39187 57.4352 9.96945 57.3261 10.4467 57.0197C10.9239 56.7133 11.2635 56.2335 11.3937 55.6815L14.5437 39.9381H21.4562L24.6063 55.6772C24.6522 55.9681 24.7565 56.2468 24.9128 56.4965C25.0691 56.7462 25.2742 56.9617 25.5159 57.1302C25.7575 57.2987 26.0307 57.4166 26.319 57.4769C26.6074 57.5372 26.9049 57.5387 27.1938 57.4812C27.4827 57.4237 27.7571 57.3084 28.0004 57.1424C28.2436 56.9763 28.4509 56.7627 28.6096 56.5146C28.7684 56.2665 28.8754 55.9888 28.9242 55.6983C28.973 55.4078 28.9627 55.1104 28.8937 54.824L24.5625 33.1568V33.0168C30.5475 32.3387 35.5 30.6828 35.5 27.9068C35.5 25.1309 30.5475 23.475 24.5625 22.7968V16.6719L34.9925 4.15279C35.3641 3.70671 35.5436 3.1314 35.4915 2.55314C35.4395 1.97487 35.1601 1.4409 34.7147 1.06841C34.2685 0.697702 33.6935 0.51901 33.1157 0.571495C32.538 0.62398 32.0046 0.903361 31.6325 1.34841L21.3512 13.6881H14.6641L4.3675 1.3506C4.18398 1.12927 3.95842 0.946493 3.70386 0.812829C3.44929 0.679164 3.17077 0.597261 2.88438 0.571849ZM11.4375 24.9931V30.8206C5.65375 30.1315 2.6875 28.6462 2.6875 27.9068C2.6875 27.1675 5.65375 25.6822 11.4375 24.9931ZM24.5625 24.9931C30.3463 25.6822 33.3125 27.1675 33.3125 27.9068C33.3125 28.6462 30.3463 30.1315 24.5625 30.8206V24.9931Z" fill="#213D68"/>
               </svg>''',
                          width: 36,
                          height: 58,
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Text(
                            'Boost your energy and strengthen your body with daily exercise—your ticket to a healthier, happier life',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(248, 248, 248, 1.0),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.string(
                          '''<svg width="59" height="37" viewBox="0 0 59 37" fill="none" xmlns="http://www.w3.org/2000/svg">
               <g clip-path="url(#clip0_2726_11578)">
               <path fill-rule="evenodd" clip-rule="evenodd" d="M1.41642 25.5233L19.8059 25.6304C29.4904 25.6547 34.5655 16.6164 53.3487 18.0522C59.2161 18.5 60.1331 23.484 57.8429 25.0658C56.1239 26.2534 54.5155 24.9392 52.835 24.3795C51.4377 23.9123 49.9541 23.6251 48.384 23.4986C43.0016 23.0654 38.8148 24.2822 34.287 25.8542C27.8387 28.0931 25.8845 29.417 25.0587 30.9209C19.6283 40.7769 1.3444 38.4163 1.41642 25.5233ZM11.7161 11.3746C11.8494 6.07603 12.9998 2.14653 14.5988 1.04135C15.1329 0.694143 17.8982 0.778071 18.7482 1.69835C22.3147 5.51157 19.038 8.50259 20.1415 12.2071C21.2241 15.8508 23.5915 14.6525 25.628 13.4139C32.5616 9.14133 40.8564 4.36241 51.8297 6.26747C60.7422 7.92042 62.8352 13.5356 59.7182 15.9476C56.6697 18.3085 55.0824 10.7828 48.4335 10.8128C42.1084 10.8413 33.6655 18.8576 28.7851 20.8916C22.7352 23.4215 17.6374 26.2445 11.7161 11.3746Z" fill="#213D68"/>
               </g>
               <defs>
               <clipPath id="clip0_2726_11578">
               <rect width="58.1215" height="37" fill="white"/>
               </clipPath>
               </defs>
               </svg>''',
                          width: 59,
                          height: 37,
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Text(
                            'Stay hydrated and nourish your body with a balanced diet—your foundation for vitality and wellness',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

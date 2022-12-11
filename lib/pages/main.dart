import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../model/theme.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Center(
                child: Text(
                  "Profile Picture",
                  style: GoogleFonts.poppins().copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: primaryColor),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Center(
                child: Image.asset(
                  'assets/images/primary.png',
                  height: 140,
                  width: 140,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Center(
                  child: Text(
                "Anne Margaritha",
                style: GoogleFonts.poppins().copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: primaryColor),
              )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 4),
              child: Center(
                  child: Text(
                "UX Designer",
                style: GoogleFonts.poppins().copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: greyColor),
              )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 70),
              child: Wrap(spacing: 38, runSpacing: 40, children: [
                Image.asset(
                  'assets/images/item1.png',
                  height: 80,
                  width: 80,
                ),
                Image.asset(
                  'assets/images/item2.png',
                  height: 80,
                  width: 80,
                ),
                Image.asset(
                  'assets/images/item3.png',
                  height: 80,
                  width: 80,
                ),
                Image.asset(
                  'assets/images/item4.png',
                  height: 80,
                  width: 80,
                ),
                Image.asset(
                  'assets/images/item5.png',
                  height: 80,
                  width: 80,
                ),
                Image.asset(
                  'assets/images/item6.png',
                  height: 80,
                  width: 80,
                ),
              ]),
            ),
            Padding(
              padding: EdgeInsets.only(top: 86),
              child: Container(
                height: 55,
                width: 225,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16))),
                  onPressed: () {
                    showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 290,
                          child: Column(children: [
                            Padding(
                              padding: EdgeInsets.only(top: 50),
                              child: Center(
                                child: Text(
                                  "Update Photo",
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: primaryColor),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(top: 12, left: 60, right: 60),
                              child: Center(
                                child: Text(
                                  "You are only able to change the picture profile once",
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: greyColor),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 30),
                              child: Center(
                                  child: Container(
                                height: 55,
                                width: 224,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: orangeColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16))),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "Continue",
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ),
                              )),
                            )
                          ]),
                        );
                      },
                    );
                  },
                  child: Text(
                    "Update Profile",
                    style: GoogleFonts.poppins().copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: primaryColor),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

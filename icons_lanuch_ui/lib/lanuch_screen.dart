import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_lanuch_ui/constants.dart';

class LanuchScreen extends StatefulWidget {
  const LanuchScreen({Key? key}) : super(key: key);

  @override
  State<LanuchScreen> createState() => _LanuchScreenState();
}

class _LanuchScreenState extends State<LanuchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBlack,
        body: SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 60, left: 40, right: 40),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    UIGuide.icons_3d,
                    width: 380,
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                  color: kDarkGray,
                  borderRadius: BorderRadius.circular(48),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(width: 20),
                            Text(
                              "3D Icons",
                              style: GoogleFonts.montserrat(
                                fontSize: 30,
                                color: kWhite,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.168,
                                fontStyle: FontStyle.normal,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(width: 20),
                            Text(
                              "Collections",
                              style: GoogleFonts.montserrat(
                                fontSize: 30,
                                color: kWhite,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.168,
                                fontStyle: FontStyle.normal,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(width: 20),
                            Text(
                              "3D Icons",
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                                color: kWhite,
                                letterSpacing: 0.168,
                                fontStyle: FontStyle.normal,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        _createBtn(context)
                      ],
                    ),
                  ),
                ),
              ))
            ],
          ),
        ));
  }
}

Widget _createBtn(context) {
  return Container(
    width: 250,
    height: 60,
    decoration: BoxDecoration(
        border: Border.all(width: 1, color: kBlack),
        borderRadius: BorderRadius.circular(30.0)),
    // ignore: deprecated_member_use
    child: FlatButton(
      onPressed: () => {},
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Get Started",
              style: GoogleFonts.montserrat(
                fontSize: 20,
                color: kBlack,
                letterSpacing: 0.168,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
        ],
      ),
      color: kWhite,
    ),
  );
}

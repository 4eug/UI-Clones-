import 'package:flutter/material.dart';
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
        body: SingleChildScrollView(
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
                    height: 400,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

Widget _icons_3d() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        width: 400,
        child: Image.asset(UIGuide.icons_3d),
      ),
    ],
  );
}

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
                  borderRadius: BorderRadius.circular(25),
                ),
              ))
            ],
          ),
        ));
  }
}

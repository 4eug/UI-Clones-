import 'package:flutter/material.dart';

class LanuchScreen extends StatefulWidget {
  const LanuchScreen({Key? key}) : super(key: key);

  @override
  State<LanuchScreen> createState() => _LanuchScreenState();
}

class _LanuchScreenState extends State<LanuchScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('3d Lanuch Screen'),
      ),
    );
  }
}

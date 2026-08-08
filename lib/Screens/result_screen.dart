import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  String report = '';

  ResultScreen({super.key, required String report});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(report)));
  }
}

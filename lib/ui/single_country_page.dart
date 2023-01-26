import 'package:flutter/material.dart';

class SingleCountryPage extends StatelessWidget {
  const SingleCountryPage({Key? key, required this.code}) : super(key: key);

  final String code;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Single Country Page"),
      ),
    );
  }
}

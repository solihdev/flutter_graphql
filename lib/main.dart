import 'package:flutter/material.dart';
import 'package:flutter_graphql/ui/all_countrires_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Graphql Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AllCountriesPage(),
    );
  }
}
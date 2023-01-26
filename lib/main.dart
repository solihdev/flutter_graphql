import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_graphql/api/api_client.dart';
import 'package:flutter_graphql/bloc/countries_bloc.dart';
import 'package:flutter_graphql/ui/all_countries_page.dart';

void main() {
  runApp(MyApp(
    countriesApiClient: CountriesApiClient(
      graphQLClient: CountriesApiClient.create(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.countriesApiClient});

  final CountriesApiClient countriesApiClient;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Graphql Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
          create: (_) => CountriesBloc(countriesApiClient: countriesApiClient),
          child: const AllCountriesPage()),
    );
  }
}

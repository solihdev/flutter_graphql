import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_graphql/bloc/countries_bloc.dart';
import 'package:flutter_graphql/ui/single_country_page.dart';

class AllCountriesPage extends StatelessWidget {
  const AllCountriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All countries page"),
      ),
      body: Center(
        child: BlocBuilder<CountriesBloc, CountriesState>(
          builder: (context, state) {
            if (state is CountriesLoadInProgress) {
              return const CircularProgressIndicator();
            }
            if (state is CountriesLoadInSuccess) {
              return ListView.builder(
                itemCount: state.countriesModel.length,
                itemBuilder: (context, index) {
                  final country = state.countriesModel[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SingleCountryPage(
                            code: country.code,
                          ),
                        ),
                      );
                    },
                    child: ListTile(
                      key: Key(country.native),
                      leading: const Icon(Icons.location_city),
                      title: Text(country.name),
                      subtitle: Text(country.capital),
                    ),
                  );
                },
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}

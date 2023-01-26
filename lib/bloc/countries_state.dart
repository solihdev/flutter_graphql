part of 'countries_bloc.dart';

abstract class CountriesState {}

class CountriesLoadInProgress extends CountriesState {}

class CountriesLoadInSuccess extends CountriesState {
  final List<CountryModel> countriesModel;

  CountriesLoadInSuccess({
    required this.countriesModel,
  });
}

class CountriesLoadInFailure extends CountriesState {}

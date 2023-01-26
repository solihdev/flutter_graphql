import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_graphql/api/api_client.dart';
import 'package:flutter_graphql/api/models/country_model.dart';

part 'country_state.dart';

class CountryCubit extends Cubit<CountryState> {
  CountryCubit({required CountriesApiClient countriesApiClient})
      : _countriesApiClient = countriesApiClient,
        super(CountryState(error: "", countryStatus: CountryStatus.pure));

  final CountriesApiClient _countriesApiClient;

  getCountry() async {
    emit(state.copyWith(countryStatus: CountryStatus.loading));
    try {
      final country = await _countriesApiClient.getCountries();
      // emit(state.copyWith(
      //     countryStatus: CountryStatus.success, countryModel: country));
    } catch (e) {
      print(e.toString());
      emit(state.copyWith(
          countryStatus: CountryStatus.error, error: e.toString()));
    }
  }
}

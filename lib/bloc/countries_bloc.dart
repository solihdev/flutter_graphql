import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_graphql/api/api_client.dart';
import 'package:flutter_graphql/api/models/country_model.dart';

part 'countries_state.dart';

part 'countries_event.dart';

class CountriesBloc extends Bloc<CountriesEvent, CountriesState> {
  CountriesBloc({required CountriesApiClient countriesApiClient})
      : _countriesApiClient = countriesApiClient,
        super(CountriesLoadInProgress()) {
    on<CountriesFetchStarted>(_onCountriesFetchStarted);
  }

  final CountriesApiClient _countriesApiClient;

  Future<void> _onCountriesFetchStarted(
      CountriesFetchStarted event, Emitter<CountriesState> emit) async {
    emit(CountriesLoadInProgress());
    try {
      final country = await _countriesApiClient.getCountries();
      emit(CountriesLoadInSuccess(countriesModel: country));
    } catch (error) {
      print("ERROR: $error");
      emit(CountriesLoadInFailure());
    }
  }
}

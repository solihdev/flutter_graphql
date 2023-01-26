import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_graphql/api/models/countries_model.dart';

part 'countries_state.dart';

part 'countries_event.dart';

class CountriesBloc extends Bloc<CountriesEvent, CountriesState> {
  CountriesBloc() : super(CountriesLoadInProgress());
}

Future<void> _onCountriesFetchStarted(
    CountriesFetchStarted event, Emitter<CountriesState> emit) async {
  emit(CountriesLoadInProgress());
  try {} catch (_) {
    emit(CountriesLoadInFailure());
  }
}

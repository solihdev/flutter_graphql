part of 'country_cubit.dart';

class CountryState extends Equatable {
  String error;
  CountryModel? countryModel;
  CountryStatus countryStatus;

  CountryState({
    required this.error,
     this.countryModel,
    required this.countryStatus,
  });

  CountryState copyWith({
    String? error,
    CountryModel? countryModel,
    CountryStatus? countryStatus,
  }) =>
      CountryState(
        error: error ?? this.error,
        countryModel: countryModel ?? this.countryModel,
        countryStatus: countryStatus ?? this.countryStatus,
      );

  @override
  List<Object?> get props => [
        error,
        countryModel,
        countryStatus,
      ];
}

enum CountryStatus { pure, success, error, loading }

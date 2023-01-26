class CountryModel {
  const CountryModel({
    required this.name,
    required this.code,
    required this.native,
    required this.capital,
    required this.emoji,
    required this.currency,
  });

  final String name;
  final String code;
  final String native;
  final String capital;
  final String emoji;
  final String currency;

  factory CountryModel.fromJson(Map<String, dynamic> json) => CountryModel(
        name: json['name'] as String? ?? "",
        code: json['code'] as String? ?? "",
        native: json['native'] as String? ?? "",
        capital: json['capital'] as String? ?? "",
        emoji: json['emoji'] as String? ?? "",
        currency: json['currency'] as String? ?? "",
      );
}

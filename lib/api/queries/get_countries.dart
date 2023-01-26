const getCountries = '''
  query GetCountries(){
    countries{
        code 
        name
        emoji
        native
        capital
        currency
    }
}
''';
//
//  getCountryById({required String countryId}) = '''
//   query GetCountries($countryId){
//     countries(""){
//         code
//         name
//         emoji
//         native
//         capital
//         currency
//     }
// }
// ''';
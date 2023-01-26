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
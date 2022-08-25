import 'package:http/http.dart' as http;

import 'package:api_countries/class/Pais.dart';

void getDataApi() {
  final url = Uri.parse('https://restcountries.com/v2/alpha/col');

  http.get(url).then((res) {
    
    final pais = paisFromJson(res.body);
    
    print('\nDebug console:');
    print('===========================');
    print('Pais: ${pais.name}');
    print('Población: ${pais.population}');
    print('Fronteras:');
    pais.borders.forEach(((e) => print('    ${e.substring(0, 1)}${e.substring(1,3).toLowerCase()}')));
    print('Idioma: ${pais.languages[0].nativeName}');
    print('Latitud: ${pais.latlng.first}');
    print('Longitud: ${pais.latlng.last}');
    print('Moneda: ${pais.currencies[0].name}');
    print('Bandera: ${pais.flag}');
    print('===========================\n');
    
  });
}

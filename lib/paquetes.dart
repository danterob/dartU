import 'package:http/http.dart' as http;
import 'package:dart_application_udemy/classes/reqres_respuesta.dart';
import 'package:dart_application_udemy/classes/pais.dart';

main(List<String> args) {}

void getReqRes_service() {
  final url = Uri.parse('https://reqres.in/api/users?page=2');
  http.get(url).then((res) {
    final resReqRes = reqResRespuestaFromJson(res.body);

    // print(res);
    // final body = jsonDecode(res.body);

    // print("page: ${body['page']}");
    // print("per_page: ${body['per_page']}");
    // print("id del 3elem: ${body['data'][2]['id']}");
    print('page:${resReqRes.page}');
    print('per_page: ${resReqRes.perPage}');
    print('id del tercer elemento: ${resReqRes.data[2].id}');
  });
}

// Tarea
void getPais() {
  final url = Uri.parse('https://restcountries.eu/rest/v2/alpha/co');
  http.get(url).then((res) {
    final resReqRes = reqresCountryFromJson(res.body);
    print('=' * 50);
    print('País: ${resReqRes.name}');
    print('Población: ${resReqRes.population}');
    print('Fronteras:');
    resReqRes.borders.forEach((borders) => print('  $borders'));
    // for (var i = 0; i < resReqRes.borders.length; i++) {
    //   print('  ${resReqRes.borders[i]}');
    // }
    print('Lenguage: ${resReqRes.languages}');
    print('Latitud: ${resReqRes.latlng[0]}');
    print('Longitud: ${resReqRes.latlng[1]}');
    print('Moneda: ${resReqRes.currencies[0].name}');
    print('Bandera: ${resReqRes.flag}');
    print('=' * 50);
  }).catchError((error) => print(error));
}

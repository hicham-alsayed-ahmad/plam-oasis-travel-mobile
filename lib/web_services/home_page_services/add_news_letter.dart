import 'package:http/http.dart' as http;
import 'package:plam_oasis_travel_mobile/web_services/public_services/api.dart';

Future<void> adduser(
  String name,
  String email,
) async {
  try {
    final response =
        await http.post(Uri.parse(API.AddUserNewsLettwr), headers: {
      "Accept": "application/json",
      "Access-Control_Allow_Origin": "*"
    }, body: {
      'name': name,
      'email': email,
    });
    print(response.body);
  } catch (err) {
    print(err);
  }
}

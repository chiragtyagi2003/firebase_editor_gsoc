import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> callFirebaseProjectsAPI(String accessToken) async {
  final String url = 'https://firebase.googleapis.com/v1beta1/projects?pageSize=10';

  Map<String, String> headers = {
    'Authorization': 'Bearer $accessToken',
    'Accept': 'application/json',
  };

  try {
    final response = await http.get(Uri.parse(url), headers: headers);

    if (response.statusCode == 200) {
      print(json.decode(response.body));
      return json.decode(response.body);
    } else {
      print('Failed to call Firebase Projects API. Status Code: ${response.statusCode}');
      throw Exception('Failed to call Firebase Projects API. Status Code: ${response.statusCode}');

    }
  } catch (error) {
    print('Error calling Firebase Projects API: $error');
    throw Exception('Error calling Firebase Projects API: $error');
  }
}

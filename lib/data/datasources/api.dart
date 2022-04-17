import 'dart:convert';

import 'package:gurbani_project/data/models/bani_model.dart';
import 'package:http/http.dart' as http;

//Future is a core Dart class for working with async operations.
//A Future object represents a potential value or error that will be available at some time in the future.
//The http.Response class contains the data received from a successful http call.
Future<Welcome> fetchData() async {
  final response = await http
      .get(Uri.parse('https://api.gurbaninow.com/v2/banis/1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON(converting Json object in text format that can be used in program
    return Welcome.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  final url = Uri.parse('https://rickandmortyapi.com/api/character');

  try {
    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw Exception('Failed to load data');
    }

    final data = jsonDecode(response.body);

    for (var character in data['results']) {
      print(character['name']);
    }
  } catch (error) {
    print('error caught: $error');
  }
}

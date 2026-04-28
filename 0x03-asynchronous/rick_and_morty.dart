import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    String? nextUrl = 'https://rickandmortyapi.com/api/character';

    while (nextUrl != null) {
      final response = await http.get(Uri.parse(nextUrl));

      if (response.statusCode != 200) {
        throw Exception('Failed to load data');
      }

      final data = jsonDecode(response.body);

      for (var character in data['results']) {
        print(character['name']);
      }

      // ✅ stop proprement quand il n'y a plus de page
      nextUrl = data['info']['next'];
    }
  } catch (error) {
    print('error caught: $error');
  }
}

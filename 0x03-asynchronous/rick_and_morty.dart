import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  final url = Uri.parse('https://rickandmortyapi.com/api/character');

  try {
    String nextUrl = url.toString();

    while (nextUrl.isNotEmpty) {
      final response = await http.get(Uri.parse(nextUrl));

      if (response.statusCode != 200) {
        throw Exception('Failed to load data');
      }

      final data = jsonDecode(response.body);

      // 🧑‍🚀 afficher les personnages
      for (var character in data['results']) {
        print(character['name']);
      }

      // 🔁 pagination (page suivante)
      nextUrl = data['info']['next'] ?? '';
    }
  } catch (error) {
    print('error caught: $error');
  }
}

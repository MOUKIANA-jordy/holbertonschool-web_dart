import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  final data = await fetchUserData();
  final decoded = jsonDecode(data);
  return decoded['id'];
}

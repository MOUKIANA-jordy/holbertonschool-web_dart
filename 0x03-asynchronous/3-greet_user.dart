import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    final data = await fetchUserData();
    final decoded = jsonDecode(data);
    final username = decoded['username'];
    return 'Hello $username';
  } catch (e) {
    return 'error caught: $e';
  }
}

Future<String> loginUser() async {
  try {
    final hasUser = await checkCredentials();
    print('There is a user: $hasUser');

    if (hasUser) {
      return await greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (e) {
    return 'error caught: $e';
  }
}

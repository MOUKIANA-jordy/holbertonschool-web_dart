import '0-util.dart';

Future<void> usersCount() async {
  final count = await fetchUsersCount();
  print(count);
}

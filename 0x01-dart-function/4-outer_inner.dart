void outer(String name, String id) {
  String inner() {
    List<String> parts = name.split(' ');
    String firstName = parts[0];
    String lastInitial = parts[1][0];
    return 'Hello Agent $lastInitial.$firstName your id is $id';
  }

  print(inner());
}

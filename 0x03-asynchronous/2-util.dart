Future<String> fetchUser() =>
    Future.delayed(
      const Duration(seconds: 2),
      () => throw 'Cannot locate user',
    );

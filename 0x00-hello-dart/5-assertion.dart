void main(List<String> args) {
  // Parse the command-line argument to get the score
  int nb = int.parse(args[0]);

  // Assert that the score is >= 80, otherwise throw an assertion error
  assert(nb >= 80, 'The score must be bigger or equal to 80');

  // If we reach here, the score is >= 80
  print('You Passed');
}

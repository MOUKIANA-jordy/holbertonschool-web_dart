int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int score(Map<String, int> team) {
    int free = team['Free throws'] ?? 0;
    int two = team['2 pointers'] ?? 0;
    int three = team['3 pointers'] ?? 0;
    return free * 1 + two * 2 + three * 3;
  }

  int scoreA = score(teamA);
  int scoreB = score(teamB);

  if (scoreA > scoreB) {
    return 1;
  } else if (scoreA < scoreB) {
    return 2;
  } else {
    return 0;
  }
}

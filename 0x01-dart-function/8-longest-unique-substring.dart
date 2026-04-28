String longestUniqueSubstring(String str) {
  if (str.isEmpty) return '';

  Map<String, int> lastIndex = {};
  int start = 0;
  int bestStart = 0;
  int bestLen = 0;

  for (int i = 0; i < str.length; i++) {
    String ch = str[i];

    if (lastIndex.containsKey(ch) && lastIndex[ch]! >= start) {
      start = lastIndex[ch]! + 1;
    }

    lastIndex[ch] = i;
    int len = i - start + 1;

    if (len > bestLen) {
      bestLen = len;
      bestStart = start;
    }
  }

  return str.substring(bestStart, bestStart + bestLen);
}

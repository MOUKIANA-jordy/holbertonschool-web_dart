List<double> convertToF(List<double> temperaturesInC) {
  return temperaturesInC
      .map((c) => double.parse(((c * 9 / 5) + 32).toStringAsFixed(2)))
      .toList();
}

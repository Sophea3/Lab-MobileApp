Map<String, int> classifyScores(List<int> scores) {
  Map<String, int> result = {'A': 0, 'B': 0, 'C': 0, 'D': 0, 'F': 0};

  for (var score in scores) {
    String grade = switch (score) {
      >= 90 && <= 100 => 'A',
      >= 80 && < 90 => 'B',
      >= 70 && < 80 => 'C',
      >= 60 && < 70 => 'D',
      _ => 'F',
    };

    result[grade] = result[grade]! + 1;
  }

  return result;
}

void main() {
  List<int> testScores = [95, 82, 67, 91, 73, 58, 88, 45, 76, 99];

  Map<String, int> output = classifyScores(testScores);

  print(output);
}

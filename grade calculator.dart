
import 'dart:io';

void main() {
  print("=== Grade Calculator (Dart CLI) ===");

  stdout.write("Enter score 1: ");
  double s1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter score 2: ");
  double s2 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter score 3: ");
  double s3 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter score 4: ");
  double s4 = double.parse(stdin.readLineSync()!);

  double average = (s1 + s2 + s3 +s4) / 4;

  String grade;
  if (average >= 20) {
    grade = "A";
  } else if (average >= 17) {
    grade = "B";
  } else if (average >= 14) {
    grade = "C+";
  } else if (average >= 10) {
    grade = "C";
  } else {
    grade = "F";
  }

  print("\nAverage: ${average.toStringAsFixed(2)}");
  print("Grade: $grade");
}

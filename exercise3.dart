class Person {
  final String name;
  final int age;

  Person(this.name, this.age);
}

void main() {
  final people = [
    Person('Alice', 25),
    Person('Bob', 30),
    Person('Charlie', 35),
    Person('Anna', 22),
    Person('Ben', 28),
  ];

  // Simple loop version
  int sum = 0;
  int count = 0;

  for (final person in people) {
    final first = person.name.toUpperCase()[0];
    if (first == 'A' || first == 'B') {
      sum += person.age;
      count++;
    }
  }

  final average = sum / count;
  print('Average age: ${average.toStringAsFixed(1)}');  // 26.3

  // Or short modern style (very common in Dart/Flutter):
  // final ages = people
  //     .where((p) => p.name.toUpperCase().startsWith('A') || 
  //                   p.name.toUpperCase().startsWith('B'))
  //     .map((p) => p.age)
  //     .toList();

  // final average = ages.reduce((a, b) => a + b) / ages.length;
  // print('Average age: ${average.toStringAsFixed(1)}');
}
List<int> processList(
  List<int> numbers,
  bool Function(int) predicate,
) {
  // Simple loop version
  final result = <int>[];
  for (final num in numbers) {
    if (predicate(num)) {
      result.add(num);
    }
  }
  return result;

  // Or the short built-in way (most common in Dart):
  // return numbers.where(predicate).toList();
}

// Example usage
void main() {
  final nums = [1, 2, 3, 4, 5, 6];
  final even = processList(nums, (it) => it % 2 == 0);
  
  print(even);          // Output: [2, 4, 6]
}
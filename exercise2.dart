void main() {
  final words = ['apple', 'cat', 'banana', 'dog', 'elephant'];

  // Create map: word → length
  final wordLengths = {
    for (final word in words) word: word.length
  };

  // Print only long ones
  wordLengths.forEach((word, length) {
    if (length > 4) {
      print('$word has length $length');
    }
  });

  // Or more functional style:
  // wordLengths
  //     .entries
  //     .where((entry) => entry.value > 4)
  //     .forEach((entry) => print('${entry.key} has length ${entry.value}'));
}
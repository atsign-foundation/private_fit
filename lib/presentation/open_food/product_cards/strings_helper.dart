// ignore_for_file: prefer_asserts_with_message

extension StringExtensions on String {
  /// Returns a list containing all positions of a [charCode]
  /// By default, the case is taken into account.
  /// Set [ignoreCase] to true, to disable the case verification.
  List<int> indexesOf(
    String charCode, {
    bool ignoreCase = false,
  }) {
    assert(charCode.length == 1);
    if (ignoreCase) {
      // ignore: parameter_assignments
      charCode = charCode.toLowerCase();
    }

    final positions = <int>[];
    var i = 0;

    for (; i != length; i++) {
      if ((ignoreCase && this[i].toLowerCase() == charCode) ||
          this[i] == charCode) {
        positions.add(i);
      }
    }

    return positions;
  }

  bool get isASpaceCharacter => this == ' ' || isANarrowBreakSpaceCharacter;

  bool get isANarrowBreakSpaceCharacter => this == ' ';

  /// Removes a character by giving its position
  String removeCharacterAt(int position) {
    assert(position >= 0 && position < length);
    return substring(0, position) + substring(position + 1);
  }

  String replaceAllIgnoreFirst(Pattern from, String replace) {
    var isFirst = true;
    return replaceAllMapped(from, (Match match) {
      if (isFirst) {
        isFirst = false;
        return match.input.substring(match.start, match.end);
      } else {
        return replace;
      }
    });
  }
}

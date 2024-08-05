class ScamLinkDetector {
  static bool isSuspicious(String message, String name) {
    final RegExp urlRegex = RegExp(r'https?://([\w.-]+)');
    final Iterable<RegExpMatch> matches = urlRegex.allMatches(message);

    for (final RegExpMatch match in matches) {
      final String url = match.group(1)!;
      if (url.contains('.top')) {
        return true;
      }
    }

    if (_containsNonAscii(message)) {
      return true;
    }

    if (!_containsName(name, message)) {
      return true;
    }

    return false;
  }

  static bool _containsNonAscii(String str) {
    return str.runes.any((int rune) => rune > 127);
  }

  static bool _containsName(String name, String message) {
    return message.contains(name);
  }
}

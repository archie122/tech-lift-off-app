// import 'package:regexpattern/regexpattern.dart'; // To use regex pattern matching

class ScamLinkDetector {
  // Function to check if the message contains a suspicious link
  static bool suspiciousLink(String message, String name) {
    // Regex to find URLs
    final urlRegex = RegExp(r'http[s]?://([\w\.-]+)');
    final matches = urlRegex.allMatches(message);
    bool linkFound = false;

    // Loop through all matches
    for (final match in matches) {
      linkFound = true;
      final url = match.group(1);
      if (url != null && url.contains('.top')) {
        return true;
      }
    }

    if (isAscii(message)) {
      return true;
    }

    if (checkName(name, message)) {
      return true;
    }

    // Return false only if there are no links or all links are ASCII but not .top
    return false;
  }

  // Function to check if a string contains only ASCII characters
  static bool isAscii(String str) {
    for (int i = 0; i < str.length; i++) {
      if (str.codeUnitAt(i) > 127) {
        return false;
      }
    }
    return true;
  }

  // Function to check if the name is present in the string
  static bool checkName(String name, String str) {
    return !str.contains(name);
  }
}

// void main() {
//   // Example usage:
//   String message = 'Check out this link: https://example.top';
//   String name = 'example';
//   bool result = ScamLinkDetector.suspiciousLink(message, name);
//   print(result); // Output: true
// }

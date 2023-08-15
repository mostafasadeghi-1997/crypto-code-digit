import 'dart:convert';
import 'dart:math';

class Generate {
  static final Random _random = Random();
  static String createCryptoRandomString([int length = 32]) {
    List<int> values = List<int>.generate(length, (i) => _random.nextInt(256));
    return base64Url.encode(values);
  }
}

void main(List<String> args) {
  print(Generate.createCryptoRandomString());
}

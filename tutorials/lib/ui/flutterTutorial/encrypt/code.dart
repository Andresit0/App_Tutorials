String encryptDecrypt = '''
import 'package:encrypt/encrypt.dart' as encrypt;

var key = encrypt.Key.fromUtf8('      32 key lenght             ');
var iv = encrypt.IV.fromLength(16);
String message = 'flutter encryption';

String encryptText(String plainText) {
  var encrypter = encrypt.Encrypter(encrypt.AES(key));
  var encrypted = encrypter.encrypt(plainText, iv: iv);
  return encrypted.base64;
}

String decryptText(String plainText) {
  var encrypter = encrypt.Encrypter(encrypt.AES(key));
  var decript = encrypter.decrypt64(plainText, iv: iv);
  return decript;
}
''';

String encryptFunction = '''
String encryptText(String plainText): Function to encrypt text
String decryptText(String plainText): Function to decrypt text
''';

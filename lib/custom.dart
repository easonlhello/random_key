
import 'dart:math';

String generatePassword({
  bool letter = true,
  bool isNumber = true,
  bool isSpecial = true,
}) {
  const length = 10;
  const letterLowerCase = "abcdefghijklmnpqrstuvwxyz";
  const letterUpperCase = "ABCDEFGHIJKLMNPQRSTUVWXYZ";
  const number = '123456789';
  const special = '@#%\$';

  String chars = "";
  if (letter) chars += '$letterLowerCase$letterUpperCase';
  if (isNumber) chars += number;
  if (isSpecial) chars += special;


  return List.generate(length, (index) {
    final indexRandom = Random.secure().nextInt(chars.length);
    return chars [indexRandom];
  }).join('');
}
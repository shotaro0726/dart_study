main() {
  var fullString = StringBuffer()
    ..write('Use a StringBuffer for ')
    ..writeAll(['efficient', 'string', 'creation'], ' ')
    ..toString();
  print(fullString);
}

main() {
  'Dart Language'.replaceAll('a', '@');

  var address = '東京都港区 1-1-1';

  Iterable<Match> matches = new RegExp('.?区').allMatches(address);
  for (Match m in matches) {
    print(m.group(0));
  }

  var multiline = ''' 改行しました ''';
  print(multiline);
}

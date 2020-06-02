import 'dart:async';

main() async {
  Future<String> lookUpVersion() async => '1.0.0';
  var version = await lookUpVersion();
  print(version);
}

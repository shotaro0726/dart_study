import 'dart:io';
import 'dart:isolate';

main() {
  final receivePort = ReceivePort();
  final sendPort = receivePort.sendPort;
  Isolate.spawn(isolate, sendPort);
  receivePort.listen((msg) {
    print("message from another Isolate: $msg");
    exit(0);
  });
}

void isolate(sendPort) {
  for (int i = 0; i < 10; i++) {
    print("waiting: $i");
  }

  sendPort.send("finished!");
}

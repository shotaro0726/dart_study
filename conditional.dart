main() {
  
  var lists = ['l', 'i', 's', 't'];
  lists.forEach((value) {
    print(value);
  });

  var sets = {'s', 'e', 't'};
  sets.forEach((element) {
    print(element);
  });

  var maps = {'k': 'm', 'e': 'a', 'y': 'p'};
  maps.forEach((key, value) {
    print('$key $value');
  });

  for (var i = 0; i < 3; i++) {
    print(i);
  }

  for (var i in ['f', 'o', 'r', 'i', 'n']) {
    if (i == 'o' || i == 'r') continue;
    print(i);
  }

  for (var i in {'s', 'e', 't'}) {
    print(i);
  }

  var w = 0;
  while (true) {
    if (w == 3) {
      break;
    } else if (w == 1) {
      w++;
      print('wは$w');
    } else {
      w++;
      print('W=$w');
    }
  }

  var dw = 0;
  do {
    dw++;
    print('dw=$dw');
  } while (dw < 3);

  var command = 'CLOSED';
  switch (command) {
    case 'CLOSED':
      print('CLOSED');
      continue newClosed;
    newClosed:
    case 'NOW_CLOSED':
      print('NOW_CLOSED');
      break;
  }
}

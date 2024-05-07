import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.activity).existsSync(), isTrue);
    expect(File(Images.addUser).existsSync(), isTrue);
    expect(File(Images.delete).existsSync(), isTrue);
    expect(File(Images.logout).existsSync(), isTrue);
    expect(File(Images.notification).existsSync(), isTrue);
    expect(File(Images.ticket).existsSync(), isTrue);
    expect(File(Images.arrowRight).existsSync(), isTrue);
    expect(File(Images.backPoster).existsSync(), isTrue);
    expect(File(Images.cinemaPoster).existsSync(), isTrue);
    expect(File(Images.userprof).existsSync(), isTrue);
  });
}

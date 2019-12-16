import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'dart:typed_data';

void main() async {
  final WriteBuffer buffer = WriteBuffer()
    ..putFloat64(3.1415)
    ..putInt32(12345678);
  final ByteData message = buffer.done();
  await BinaryMessages.send('foo', message);
}

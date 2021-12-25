import 'dart:typed_data';

import 'package:primitive/src/number.dart';

class U8 extends Integer {
  U8(int value) : super(value) {
    data = ByteData(1);
    data.setInt8(0, value);
  }

  U8.fromBytes(Uint8List bytes) : super.fromBytes(bytes) {
    data = ByteData(1);
    data.setUint8(0, bytes[0]);
  }

  @override
  U8 operator %(Integer other) {
    return U8(value % other.value);
  }

  @override
  U8 operator &(Integer other) {
    return U8(value & other.value);
  }

  @override
  U8 operator *(Integer other) {
    return U8(value * other.value);
  }

  @override
  U8 operator +(Integer other) {
    return U8(value + other.value);
  }

  @override
  U8 operator -() {
    return U8(-value);
  }

  @override
  U8 operator -(Integer other) {
    return U8(value - other.value);
  }

  @override
  U8 operator /(Integer other) {
    return U8(value ~/ other.value);
  }

  @override
  bool operator <(Integer other) {
    return value < other.value;
  }

  @override
  U8 operator <<(int shiftAmount) {
    return U8(value << shiftAmount);
  }

  @override
  bool operator <=(Integer other) {
    return value <= other.value;
  }

  @override
  bool operator >(Integer other) {
    return value > other.value;
  }

  @override
  bool operator >=(Integer other) {
    return value >= other.value;
  }

  @override
  U8 operator >>(int shiftAmount) {
    return U8(value >> shiftAmount);
  }

  @override
  U8 operator ^(Integer other) {
    return U8(value ^ other.value);
  }

  @override
  U8 abs() {
    return U8(value.abs());
  }

  @override
  U8 pow(Integer exponent) {
    var result = 1;
    for (var i = 0; i < exponent.value; i++) {
      result *= value;
    }
    return U8(result);
  }

  @override
  U8 rotateLeft(int shiftAmount) {
    var temp = data.getInt8(0);
    var result = temp << shiftAmount | temp >> (8 - shiftAmount);
    return U8(result);
  }

  @override
  U8 rotateRight(int shiftAmount) {
    var temp = data.getInt8(0);
    var result = temp >> shiftAmount | temp << (8 - shiftAmount);
    return U8(result);
  }

  @override
  int get value => data.getInt8(0);

  @override
  U8 operator |(Integer other) {
    return U8(value | other.value);
  }

  @override
  U8 operator ~() {
    return U8(~value);
  }

  @override
  U8 operator ~/(Integer other) {
    return U8(value ~/ other.value);
  }
}

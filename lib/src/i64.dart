import 'dart:typed_data';

import 'package:primitive/src/number.dart';

class I64 extends Integer {
  I64(int value) : super(value) {
    data = ByteData(8);
    data.setInt64(0, value, Endian.little);
  }

  I64.fromBytes(Uint8List bytes) : super.fromBytes(bytes) {
    data = ByteData.view(bytes.buffer, 0, 8);
  }

  @override
  I64 operator %(Integer other) {
    return I64(value % other.value);
  }

  @override
  I64 operator &(Integer other) {
    return I64(value & other.value);
  }

  @override
  I64 operator *(Integer other) {
    return I64(value * other.value);
  }

  @override
  I64 operator +(Integer other) {
    return I64(value + other.value);
  }

  @override
  I64 operator -() {
    return I64(-value);
  }

  @override
  I64 operator -(Integer other) {
    return I64(value - other.value);
  }

  @override
  I64 operator /(Integer other) {
    return I64(value ~/ other.value);
  }

  @override
  bool operator <(Integer other) {
    return value < other.value;
  }

  @override
  I64 operator <<(int shiftAmount) {
    return I64(value << shiftAmount);
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
  I64 operator >>(int shiftAmount) {
    return I64(value >> shiftAmount);
  }

  @override
  I64 operator ^(Integer other) {
    return I64(value ^ other.value);
  }

  @override
  I64 abs() {
    return I64(value.abs());
  }

  @override
  I64 pow(Integer exponent) {
    var result = 1;
    for (var i = 0; i < exponent.value; i++) {
      result *= value;
    }
    return I64(result);
  }

  @override
  I64 rotateLeft(int shiftAmount) {
    var temp = data.getInt64(0, Endian.little);
    var result = temp << shiftAmount | temp >> (64 - shiftAmount);
    return I64(result);
  }

  @override
  I64 rotateRight(int shiftAmount) {
    var temp = data.getInt64(0, Endian.little);
    var result = temp >> shiftAmount | temp << (64 - shiftAmount);
    return I64(result);
  }

  @override
  I64 operator |(Integer other) {
    return I64(value | other.value);
  }

  @override
  I64 operator ~() {
    return I64(~value);
  }

  @override
  I64 operator ~/(Integer other) {
    return I64(value ~/ other.value);
  }

  @override
  int get value => data.getInt64(0, Endian.little);
}

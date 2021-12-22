import 'dart:typed_data';

import 'package:primitive/src/number.dart';

class I8 extends Integer {
  I8(int value) : super(value) {
    data = ByteData(1);
    data.setInt8(0, value);
  }

  @override
  I8 operator %(Integer other) {
    return I8(value % other.value);
  }

  @override
  I8 operator &(Integer other) {
    return I8(value & other.value);
  }

  @override
  I8 operator *(Integer other) {
    return I8(value * other.value);
  }

  @override
  I8 operator +(Integer other) {
    return I8(value + other.value);
  }

  @override
  I8 operator -() {
    return I8(-value);
  }

  @override
  I8 operator -(Integer other) {
    return I8(value - other.value);
  }

  @override
  I8 operator /(Integer other) {
    return I8(value ~/ other.value);
  }

  @override
  bool operator <(Integer other) {
    return value < other.value;
  }

  @override
  I8 operator <<(int shiftAmount) {
    return I8(value << shiftAmount);
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
  I8 operator >>(int shiftAmount) {
    return I8(value >> shiftAmount);
  }

  @override
  I8 operator ^(Integer other) {
    return I8(value ^ other.value);
  }

  @override
  I8 abs() {
    return I8(value.abs());
  }

  @override
  I8 pow(Integer exponent) {
    var result = 1;
    for (var i = 0; i < exponent.value; i++) {
      result *= value;
    }
    return I8(result);
  }

  @override
  I8 rotateLeft(int shiftAmount) {
    var temp = data.getInt8(0);
    var result = temp << shiftAmount | temp >> (8 - shiftAmount);
    return I8(result);
  }

  @override
  I8 rotateRight(int shiftAmount) {
    var temp = data.getInt8(0);
    var result = temp >> shiftAmount | temp << (8 - shiftAmount);
    return I8(result);
  }

  @override
  int get value => data.getInt8(0);

  @override
  I8 operator |(Integer other) {
    return I8(value | other.value);
  }

  @override
  I8 operator ~() {
    return I8(~value);
  }

  @override
  I8 operator ~/(Integer other) {
    return I8(value ~/ other.value);
  }
}

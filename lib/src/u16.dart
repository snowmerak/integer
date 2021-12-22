import 'dart:typed_data';

import 'package:primitive/src/number.dart';

class U16 extends Integer {
  U16(int value) : super(value) {
    data = ByteData(2);
    data.setInt16(0, value, Endian.little);
  }

  @override
  U16 operator %(Integer other) {
    return U16(value % other.value);
  }

  @override
  U16 operator &(Integer other) {
    return U16(value & other.value);
  }

  @override
  U16 operator *(Integer other) {
    return U16(value * other.value);
  }

  @override
  U16 operator +(Integer other) {
    return U16(value + other.value);
  }

  @override
  U16 operator -() {
    return U16(-value);
  }

  @override
  U16 operator -(Integer other) {
    return U16(value - other.value);
  }

  @override
  U16 operator /(Integer other) {
    return U16(value ~/ other.value);
  }

  @override
  bool operator <(Integer other) {
    return value < other.value;
  }

  @override
  U16 operator <<(int shiftAmount) {
    return U16(value << shiftAmount);
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
  U16 operator >>(int shiftAmount) {
    return U16(value >> shiftAmount);
  }

  @override
  U16 operator ^(Integer other) {
    return U16(value ^ other.value);
  }

  @override
  U16 abs() {
    return U16(value.abs());
  }

  @override
  U16 pow(Integer exponent) {
    var result = 1;
    for (var i = 0; i < exponent.value; i++) {
      result *= value;
    }
    return U16(result);
  }

  @override
  U16 rotateLeft(int shiftAmount) {
    var temp = data.getInt16(0, Endian.little);
    var result = temp << shiftAmount | temp >> (16 - shiftAmount);
    return U16(result);
  }

  @override
  U16 rotateRight(int shiftAmount) {
    var temp = data.getInt16(0, Endian.little);
    var result = temp >> shiftAmount | temp << (16 - shiftAmount);
    return U16(result);
  }

  @override
  int get value => data.getInt16(0, Endian.little);

  @override
  U16 operator |(Integer other) {
    return U16(value | other.value);
  }

  @override
  U16 operator ~() {
    return U16(~value);
  }

  @override
  U16 operator ~/(Integer other) {
    return U16(value ~/ other.value);
  }
}

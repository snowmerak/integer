import 'dart:typed_data';

import 'package:primitive/src/number.dart';

class I16 extends Integer {
  I16(int value) : super(value) {
    data = ByteData(2);
    data.setInt16(0, value, Endian.little);
  }

  @override
  I16 operator %(Integer other) {
    return I16(value % other.value);
  }

  @override
  I16 operator &(Integer other) {
    return I16(value & other.value);
  }

  @override
  I16 operator *(Integer other) {
    return I16(value * other.value);
  }

  @override
  I16 operator +(Integer other) {
    return I16(value + other.value);
  }

  @override
  I16 operator -() {
    return I16(-value);
  }

  @override
  I16 operator -(Integer other) {
    return I16(value - other.value);
  }

  @override
  I16 operator /(Integer other) {
    return I16(value ~/ other.value);
  }

  @override
  bool operator <(Integer other) {
    return value < other.value;
  }

  @override
  I16 operator <<(int shiftAmount) {
    return I16(value << shiftAmount);
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
  I16 operator >>(int shiftAmount) {
    return I16(value >> shiftAmount);
  }

  @override
  I16 operator ^(Integer other) {
    return I16(value ^ other.value);
  }

  @override
  I16 abs() {
    return I16(value.abs());
  }

  @override
  I16 pow(Integer exponent) {
    var result = 1;
    for (var i = 0; i < exponent.value; i++) {
      result *= value;
    }
    return I16(result);
  }

  @override
  I16 rotateLeft(int shiftAmount) {
    var temp = data.getInt16(0, Endian.little);
    var result = temp << shiftAmount | temp >> (16 - shiftAmount);
    return I16(result);
  }

  @override
  I16 rotateRight(int shiftAmount) {
    var temp = data.getInt16(0, Endian.little);
    var result = temp >> shiftAmount | temp << (16 - shiftAmount);
    return I16(result);
  }

  @override
  int get value => data.getInt16(0, Endian.little);

  @override
  I16 operator |(Integer other) {
    return I16(value | other.value);
  }

  @override
  I16 operator ~() {
    return I16(~value);
  }

  @override
  I16 operator ~/(Integer other) {
    return I16(value ~/ other.value);
  }
}

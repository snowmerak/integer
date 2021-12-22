import 'dart:typed_data';

import 'package:primitive/src/number.dart';

class U32 extends Integer {
  U32(int value) : super(0) {
    data = ByteData(4);
    data.setInt32(0, value, Endian.little);
  }

  @override
  U32 operator %(Integer other) {
    return U32(data.getInt32(0, Endian.little) %
        other.data.getInt32(0, Endian.little));
  }

  @override
  U32 operator &(Integer other) {
    return U32(data.getInt32(0, Endian.little) &
        other.data.getInt32(0, Endian.little));
  }

  @override
  U32 operator *(Integer other) {
    return U32(data.getInt32(0, Endian.little) *
        other.data.getInt32(0, Endian.little));
  }

  @override
  U32 operator +(Integer other) {
    return U32(data.getInt32(0, Endian.little) +
        other.data.getInt32(0, Endian.little));
  }

  @override
  U32 operator -() {
    return U32(-data.getInt32(0, Endian.little));
  }

  @override
  U32 operator -(Integer other) {
    return U32(data.getInt32(0, Endian.little) -
        other.data.getInt32(0, Endian.little));
  }

  @override
  U32 operator /(Integer other) {
    return U32(data.getInt32(0, Endian.little) ~/
        other.data.getInt32(0, Endian.little));
  }

  @override
  bool operator <(Integer other) {
    return data.getInt32(0, Endian.little) <
        other.data.getInt32(0, Endian.little);
  }

  @override
  U32 operator <<(int shiftAmount) {
    return U32(data.getInt32(0, Endian.little) << shiftAmount);
  }

  @override
  bool operator <=(Integer other) {
    return data.getInt32(0, Endian.little) <=
        other.data.getInt32(0, Endian.little);
  }

  @override
  bool operator >(Integer other) {
    return data.getInt32(0, Endian.little) >
        other.data.getInt32(0, Endian.little);
  }

  @override
  bool operator >=(Integer other) {
    return data.getInt32(0, Endian.little) >=
        other.data.getInt32(0, Endian.little);
  }

  @override
  U32 operator >>(int shiftAmount) {
    return U32(data.getInt32(0, Endian.little) >> shiftAmount);
  }

  @override
  U32 operator ^(Integer other) {
    return U32(data.getInt32(0, Endian.little) ^
        other.data.getInt32(0, Endian.little));
  }

  @override
  U32 abs() {
    return U32(data.getInt32(0, Endian.little).abs());
  }

  @override
  U32 pow(Integer exponent) {
    var result = 1;
    for (var i = 0; i < exponent.data.getInt32(0, Endian.little); i++) {
      result *= value;
    }
    return U32(result);
  }

  @override
  U32 rotateLeft(int shiftAmount) {
    var temp = data.getInt32(0, Endian.little);
    var result = temp << shiftAmount | temp >> (32 - shiftAmount);
    return U32(result);
  }

  @override
  U32 rotateRight(int shiftAmount) {
    var temp = data.getInt32(0, Endian.little);
    var result = temp >> shiftAmount | temp << (32 - shiftAmount);
    return U32(result);
  }

  @override
  int get value => data.getInt32(0, Endian.little);

  @override
  U32 operator |(Integer other) {
    return U32(data.getInt32(0, Endian.little) |
        other.data.getInt32(0, Endian.little));
  }

  @override
  U32 operator ~() {
    return U32(~data.getInt32(0, Endian.little));
  }

  @override
  U32 operator ~/(Integer other) {
    return U32(data.getInt32(0, Endian.little) ~/
        other.data.getInt32(0, Endian.little));
  }
}

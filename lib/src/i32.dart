import 'dart:typed_data';

import 'package:primitive/src/number.dart';

class I32 extends Integer {
  I32(int value) : super(0) {
    data = ByteData(4);
    data.setInt32(0, value, Endian.little);
  }

  I32.fromBytes(Uint8List bytes) : super.fromBytes(bytes) {
    data = ByteData.view(bytes.buffer, 0, 4);
  }

  @override
  I32 operator %(Integer other) {
    return I32(data.getInt32(0, Endian.little) %
        other.data.getInt32(0, Endian.little));
  }

  @override
  I32 operator &(Integer other) {
    return I32(data.getInt32(0, Endian.little) &
        other.data.getInt32(0, Endian.little));
  }

  @override
  I32 operator *(Integer other) {
    return I32(data.getInt32(0, Endian.little) *
        other.data.getInt32(0, Endian.little));
  }

  @override
  I32 operator +(Integer other) {
    return I32(data.getInt32(0, Endian.little) +
        other.data.getInt32(0, Endian.little));
  }

  @override
  I32 operator -() {
    return I32(-data.getInt32(0, Endian.little));
  }

  @override
  I32 operator -(Integer other) {
    return I32(data.getInt32(0, Endian.little) -
        other.data.getInt32(0, Endian.little));
  }

  @override
  I32 operator /(Integer other) {
    return I32(data.getInt32(0, Endian.little) ~/
        other.data.getInt32(0, Endian.little));
  }

  @override
  bool operator <(Integer other) {
    return data.getInt32(0, Endian.little) <
        other.data.getInt32(0, Endian.little);
  }

  @override
  I32 operator <<(int shiftAmount) {
    return I32(data.getInt32(0, Endian.little) << shiftAmount);
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
  I32 operator >>(int shiftAmount) {
    return I32(data.getInt32(0, Endian.little) >> shiftAmount);
  }

  @override
  I32 operator ^(Integer other) {
    return I32(data.getInt32(0, Endian.little) ^
        other.data.getInt32(0, Endian.little));
  }

  @override
  I32 abs() {
    return I32(data.getInt32(0, Endian.little).abs());
  }

  @override
  I32 pow(Integer exponent) {
    var result = 1;
    for (var i = 0; i < exponent.data.getInt32(0, Endian.little); i++) {
      result *= value;
    }
    return I32(result);
  }

  @override
  I32 rotateLeft(int shiftAmount) {
    var temp = data.getInt32(0, Endian.little);
    var result = temp << shiftAmount | temp >> (32 - shiftAmount);
    return I32(result);
  }

  @override
  I32 rotateRight(int shiftAmount) {
    var temp = data.getInt32(0, Endian.little);
    var result = temp >> shiftAmount | temp << (32 - shiftAmount);
    return I32(result);
  }

  @override
  int get value => data.getInt32(0, Endian.little);

  @override
  I32 operator |(Integer other) {
    return I32(data.getInt32(0, Endian.little) |
        other.data.getInt32(0, Endian.little));
  }

  @override
  I32 operator ~() {
    return I32(~data.getInt32(0, Endian.little));
  }

  @override
  I32 operator ~/(Integer other) {
    return I32(data.getInt32(0, Endian.little) ~/
        other.data.getInt32(0, Endian.little));
  }
}

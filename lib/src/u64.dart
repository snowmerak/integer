import 'dart:typed_data';

import 'package:primitive/src/number.dart';

class U64 extends BigInteger {
  U64(int init) : super(init) {
    value = BigInt.from(init);
  }

  U64.from(BigInt init) : super.from(init) {
    value = BigInt.parse(init.toRadixString(10), radix: 10);
    while (value > BigInteger.U64MAX) {
      value -= BigInteger.U64DIST;
    }
    while (value < BigInteger.U64MIN) {
      value += BigInteger.U64DIST;
    }
  }

  U64.fromBytes(Uint8List bytes) : super.fromBytes(bytes) {
    var data = ByteData(8);
    data.buffer.asUint8List().setRange(0, 8, bytes);
    value = BigInt.from(data.getUint64(0, Endian.little));
    value = value.toUnsigned(64);
  }

  @override
  U64 operator %(BigInteger other) {
    return U64.from(value % other.value);
  }

  @override
  U64 operator &(BigInteger other) {
    return U64.from(value & other.value);
  }

  @override
  U64 operator *(BigInteger other) {
    return U64.from(value * other.value);
  }

  @override
  U64 operator +(BigInteger other) {
    return U64.from(value + other.value);
  }

  @override
  U64 operator -() {
    return U64.from(-value);
  }

  @override
  U64 operator -(BigInteger other) {
    return U64.from(value - other.value);
  }

  @override
  U64 operator /(BigInteger other) {
    return U64.from(value ~/ other.value);
  }

  @override
  bool operator <(BigInteger other) {
    return value < other.value;
  }

  @override
  U64 operator <<(int shiftAmount) {
    return U64.from(value << shiftAmount);
  }

  @override
  bool operator <=(BigInteger other) {
    return value <= other.value;
  }

  @override
  bool operator >(BigInteger other) {
    return value > other.value;
  }

  @override
  bool operator >=(BigInteger other) {
    return value >= other.value;
  }

  @override
  U64 operator >>(int shiftAmount) {
    return U64.from(value >> shiftAmount);
  }

  @override
  U64 operator ^(BigInteger other) {
    return U64.from(value ^ other.value);
  }

  @override
  U64 abs() {
    return U64.from(value.abs());
  }

  @override
  U64 pow(BigInteger exponent) {
    return U64.from(value.pow(exponent.value.toInt()));
  }

  @override
  U64 rotateLeft(int shiftAmount) {
    var temp = BigInt.parse(value.toRadixString(2), radix: 2);
    var result = temp << shiftAmount | temp >> (64 - shiftAmount);
    return U64.from(result);
  }

  @override
  U64 rotateRight(int shiftAmount) {
    var temp = BigInt.parse(value.toRadixString(2), radix: 2);
    var result = temp >> shiftAmount | temp << (64 - shiftAmount);
    return U64.from(result);
  }

  @override
  U64 operator |(BigInteger other) {
    return U64.from(value | other.value);
  }

  @override
  U64 operator ~() {
    return U64.from(value.toUnsigned(64).toSigned(64));
  }

  @override
  U64 operator ~/(BigInteger other) {
    return U64.from(value ~/ other.value);
  }

  @override
  Uint8List toBytes() {
    var data = ByteData(8);
    data.setUint64(0, value.toInt(), Endian.little);
    return data.buffer.asUint8List();
  }
}

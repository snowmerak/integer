import 'dart:typed_data';

import 'package:primitive/src/number.dart';

class U64 extends BigInteger {
  U64(BigInt init) : super(init) {
    value = BigInt.parse(init.toRadixString(10), radix: 10);
    while (value > BigInteger.U64MAX) {
      value -= BigInteger.U64DIST;
    }
    while (value < BigInteger.U64MIN) {
      value += BigInteger.U64DIST;
    }
  }

  @override
  U64 operator %(BigInteger other) {
    return U64(value % other.value);
  }

  @override
  U64 operator &(BigInteger other) {
    return U64(value & other.value);
  }

  @override
  U64 operator *(BigInteger other) {
    return U64(value * other.value);
  }

  @override
  U64 operator +(BigInteger other) {
    return U64(value + other.value);
  }

  @override
  U64 operator -() {
    return U64(-value);
  }

  @override
  U64 operator -(BigInteger other) {
    return U64(value - other.value);
  }

  @override
  U64 operator /(BigInteger other) {
    return U64(value ~/ other.value);
  }

  @override
  bool operator <(BigInteger other) {
    return value < other.value;
  }

  @override
  U64 operator <<(int shiftAmount) {
    return U64(value << shiftAmount);
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
    return U64(value >> shiftAmount);
  }

  @override
  U64 operator ^(BigInteger other) {
    return U64(value ^ other.value);
  }

  @override
  U64 abs() {
    return U64(value.abs());
  }

  @override
  U64 pow(BigInteger exponent) {
    return U64(value.pow(exponent.value.toInt()));
  }

  @override
  U64 rotateLeft(int shiftAmount) {
    var temp = BigInt.parse(value.toRadixString(2), radix: 2);
    var result = temp << shiftAmount | temp >> (64 - shiftAmount);
    return U64(result);
  }

  @override
  U64 rotateRight(int shiftAmount) {
    var temp = BigInt.parse(value.toRadixString(2), radix: 2);
    var result = temp >> shiftAmount | temp << (64 - shiftAmount);
    return U64(result);
  }

  @override
  U64 operator |(BigInteger other) {
    return U64(value | other.value);
  }

  @override
  U64 operator ~() {
    return U64(value.toUnsigned(64).toSigned(64));
  }

  @override
  U64 operator ~/(BigInteger other) {
    return U64(value ~/ other.value);
  }
}

import 'package:primitive/src/number.dart';

class U256 extends BigInteger {
  U256(BigInt init) : super(init) {
    value = BigInt.parse(init.toRadixString(10), radix: 10);
    while (value > BigInteger.U256MAX) {
      value -= BigInteger.U256DIST;
    }
    while (value < BigInteger.U256MIN) {
      value += BigInteger.U256DIST;
    }
  }

  @override
  U256 operator %(BigInteger other) {
    return U256(value % other.value);
  }

  @override
  U256 operator &(BigInteger other) {
    return U256(value & other.value);
  }

  @override
  U256 operator *(BigInteger other) {
    return U256(value * other.value);
  }

  @override
  U256 operator +(BigInteger other) {
    return U256(value + other.value);
  }

  @override
  U256 operator -() {
    return U256(-value);
  }

  @override
  U256 operator -(BigInteger other) {
    return U256(value - other.value);
  }

  @override
  U256 operator /(BigInteger other) {
    return U256(value ~/ other.value);
  }

  @override
  bool operator <(BigInteger other) {
    return value < other.value;
  }

  @override
  U256 operator <<(int shiftAmount) {
    return U256(value << shiftAmount);
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
  U256 operator >>(int shiftAmount) {
    return U256(value >> shiftAmount);
  }

  @override
  U256 operator ^(BigInteger other) {
    return U256(value ^ other.value);
  }

  @override
  U256 abs() {
    return U256(value.abs());
  }

  @override
  U256 pow(BigInteger exponent) {
    return U256(value.pow(exponent.value.toInt()));
  }

  @override
  U256 rotateLeft(int shiftAmount) {
    var temp = BigInt.parse(value.toRadixString(2), radix: 2);
    var result = temp << shiftAmount | temp >> (256 - shiftAmount);
    return U256(result);
  }

  @override
  U256 rotateRight(int shiftAmount) {
    var temp = BigInt.parse(value.toRadixString(2), radix: 2);
    var result = temp >> shiftAmount | temp << (256 - shiftAmount);
    return U256(result);
  }

  @override
  U256 operator |(BigInteger other) {
    return U256(value | other.value);
  }

  @override
  U256 operator ~() {
    return U256(value.toUnsigned(256).toSigned(256));
  }

  @override
  U256 operator ~/(BigInteger other) {
    return U256(value ~/ other.value);
  }
}

// import 'package:primitive/src/number.dart';

// class I256 extends BigInteger {
//   I256(BigInt init) : super(init) {
//     value = BigInt.parse(init.toRadixString(10), radix: 10);
//     while (value > BigInteger.I256MAX) {
//       value -= BigInteger.U256DIST;
//     }
//     while (value < BigInteger.I256MIN) {
//       value += BigInteger.U256DIST;
//     }
//   }

//   @override
//   I256 operator %(BigInteger other) {
//     return I256(value % other.value);
//   }

//   @override
//   I256 operator &(BigInteger other) {
//     return I256(value & other.value);
//   }

//   @override
//   I256 operator *(BigInteger other) {
//     return I256(value * other.value);
//   }

//   @override
//   I256 operator +(BigInteger other) {
//     return I256(value + other.value);
//   }

//   @override
//   I256 operator -() {
//     return I256(-value);
//   }

//   @override
//   I256 operator -(BigInteger other) {
//     return I256(value - other.value);
//   }

//   @override
//   I256 operator /(BigInteger other) {
//     return I256(value ~/ other.value);
//   }

//   @override
//   bool operator <(BigInteger other) {
//     return value < other.value;
//   }

//   @override
//   I256 operator <<(int shiftAmount) {
//     return I256(value << shiftAmount);
//   }

//   @override
//   bool operator <=(BigInteger other) {
//     return value <= other.value;
//   }

//   @override
//   bool operator >(BigInteger other) {
//     return value > other.value;
//   }

//   @override
//   bool operator >=(BigInteger other) {
//     return value >= other.value;
//   }

//   @override
//   I256 operator >>(int shiftAmount) {
//     return I256(value >> shiftAmount);
//   }

//   @override
//   I256 operator ^(BigInteger other) {
//     return I256(value ^ other.value);
//   }

//   @override
//   I256 abs() {
//     return I256(value.abs());
//   }

//   @override
//   I256 pow(BigInteger exponent) {
//     return I256(value.pow(exponent.value.toInt()));
//   }

//   @override
//   I256 rotateLeft(int shiftAmount) {
//     var temp = BigInt.parse(value.toRadixString(2), radix: 2);
//     var result = temp << shiftAmount | temp >> (256 - shiftAmount);
//     return I256(result);
//   }

//   @override
//   I256 rotateRight(int shiftAmount) {
//     var temp = BigInt.parse(value.toRadixString(2), radix: 2);
//     var result = temp >> shiftAmount | temp << (256 - shiftAmount);
//     return I256(result);
//   }

//   @override
//   I256 operator |(BigInteger other) {
//     return I256(value | other.value);
//   }

//   @override
//   I256 operator ~() {
//     return I256(value.toUnsigned(256).toSigned(256));
//   }

//   @override
//   I256 operator ~/(BigInteger other) {
//     return I256(value ~/ other.value);
//   }
// }

import 'package:primitive/src/number.dart';

// class I128 extends BigInteger {
//   I128(BigInt init) : super(init) {
//     value = BigInt.parse(init.toRadixString(10), radix: 10);
//     while (value > BigInteger.I128MAX) {
//       value -= BigInteger.U128DIST;
//     }
//     while (value < BigInteger.I128MIN) {
//       value += BigInteger.U128DIST;
//     }
//   }

//   @override
//   I128 operator %(BigInteger other) {
//     return I128(value % other.value);
//   }

//   @override
//   I128 operator &(BigInteger other) {
//     return I128(value & other.value);
//   }

//   @override
//   I128 operator *(BigInteger other) {
//     return I128(value * other.value);
//   }

//   @override
//   I128 operator +(BigInteger other) {
//     return I128(value + other.value);
//   }

//   @override
//   I128 operator -() {
//     return I128(-value);
//   }

//   @override
//   I128 operator -(BigInteger other) {
//     return I128(value - other.value);
//   }

//   @override
//   I128 operator /(BigInteger other) {
//     return I128(value ~/ other.value);
//   }

//   @override
//   bool operator <(BigInteger other) {
//     return value < other.value;
//   }

//   @override
//   I128 operator <<(int shiftAmount) {
//     return I128(value << shiftAmount);
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
//   I128 operator >>(int shiftAmount) {
//     return I128(value >> shiftAmount);
//   }

//   @override
//   I128 operator ^(BigInteger other) {
//     return I128(value ^ other.value);
//   }

//   @override
//   I128 abs() {
//     return I128(value.abs());
//   }

//   @override
//   I128 pow(BigInteger exponent) {
//     return I128(value.pow(exponent.value.toInt()));
//   }

//   @override
//   I128 rotateLeft(int shiftAmount) {
//     var temp = BigInt.parse(value.toRadixString(2), radix: 2);
//     var result = temp << shiftAmount | temp >> (128 - shiftAmount);
//     return I128(result);
//   }

//   @override
//   I128 rotateRight(int shiftAmount) {
//     var temp = BigInt.parse(value.toRadixString(2), radix: 2);
//     var result = temp >> shiftAmount | temp << (128 - shiftAmount);
//     return I128(result);
//   }

//   @override
//   I128 operator |(BigInteger other) {
//     return I128(value | other.value);
//   }

//   @override
//   I128 operator ~() {
//     return I128(value.toUnsigned(128).toSigned(128));
//   }

//   @override
//   I128 operator ~/(BigInteger other) {
//     return I128(value ~/ other.value);
//   }
// }

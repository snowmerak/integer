// import 'package:primitive/src/number.dart';

// class U128 extends BigInteger {
//   U128(BigInt init) : super(init) {
//     value = BigInt.parse(init.toRadixString(10), radix: 10);
//     while (value > BigInteger.U128MAX) {
//       value -= BigInteger.U128DIST;
//     }
//     while (value < BigInteger.U128MIN) {
//       value += BigInteger.U128DIST;
//     }
//   }

//   @override
//   U128 operator %(BigInteger other) {
//     return U128(value % other.value);
//   }

//   @override
//   U128 operator &(BigInteger other) {
//     return U128(value & other.value);
//   }

//   @override
//   U128 operator *(BigInteger other) {
//     return U128(value * other.value);
//   }

//   @override
//   U128 operator +(BigInteger other) {
//     return U128(value + other.value);
//   }

//   @override
//   U128 operator -() {
//     return U128(-value);
//   }

//   @override
//   U128 operator -(BigInteger other) {
//     return U128(value - other.value);
//   }

//   @override
//   U128 operator /(BigInteger other) {
//     return U128(value ~/ other.value);
//   }

//   @override
//   bool operator <(BigInteger other) {
//     return value < other.value;
//   }

//   @override
//   U128 operator <<(int shiftAmount) {
//     return U128(value << shiftAmount);
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
//   U128 operator >>(int shiftAmount) {
//     return U128(value >> shiftAmount);
//   }

//   @override
//   U128 operator ^(BigInteger other) {
//     return U128(value ^ other.value);
//   }

//   @override
//   U128 abs() {
//     return U128(value.abs());
//   }

//   @override
//   U128 pow(BigInteger exponent) {
//     return U128(value.pow(exponent.value.toInt()));
//   }

//   @override
//   U128 rotateLeft(int shiftAmount) {
//     var temp = BigInt.parse(value.toRadixString(2), radix: 2);
//     var result = temp << shiftAmount | temp >> (128 - shiftAmount);
//     return U128(result);
//   }

//   @override
//   U128 rotateRight(int shiftAmount) {
//     var temp = BigInt.parse(value.toRadixString(2), radix: 2);
//     var result = temp >> shiftAmount | temp << (128 - shiftAmount);
//     return U128(result);
//   }

//   @override
//   U128 operator |(BigInteger other) {
//     return U128(value | other.value);
//   }

//   @override
//   U128 operator ~() {
//     return U128(value.toUnsigned(128).toSigned(128));
//   }

//   @override
//   U128 operator ~/(BigInteger other) {
//     return U128(value ~/ other.value);
//   }
// }

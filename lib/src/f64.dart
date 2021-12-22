import 'dart:typed_data';

import 'package:primitive/src/number.dart';

class F64 extends Float {
  F64(double value) : super(value) {
    data = ByteData(8);
    data.setFloat64(0, value);
  }

  @override
  F64 operator %(Float other) {
    return F64(value % other.value);
  }

  @override
  F64 operator *(Float other) {
    return F64(value * other.value);
  }

  @override
  F64 operator +(Float other) {
    return F64(value + other.value);
  }

  @override
  F64 operator -() {
    return F64(-value);
  }

  @override
  F64 operator -(Float other) {
    return F64(value - other.value);
  }

  @override
  F64 operator /(Float other) {
    return F64(value / other.value);
  }

  @override
  bool operator <(Float other) {
    return value < other.value;
  }

  @override
  bool operator <=(Float other) {
    return value <= other.value;
  }

  @override
  bool operator >(Float other) {
    return value > other.value;
  }

  @override
  bool operator >=(Float other) {
    return value >= other.value;
  }

  @override
  F64 abs() {
    return F64(value.abs());
  }

  @override
  F64 pow(Float exponent) {
    var result = 1.0;
    for (var i = 0; i < exponent.value; i++) {
      result *= value;
    }
    return F64(result);
  }

  @override
  double get value => data.getFloat64(0);
}

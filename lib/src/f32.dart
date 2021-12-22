import 'dart:typed_data';

import 'package:primitive/src/number.dart';

class F32 extends Float {
  F32(double value) : super(value) {
    data = ByteData(4);
    data.setFloat32(0, value);
  }

  @override
  F32 operator %(Float other) {
    return F32(value % other.value);
  }

  @override
  F32 operator *(Float other) {
    return F32(value * other.value);
  }

  @override
  F32 operator +(Float other) {
    return F32(value + other.value);
  }

  @override
  F32 operator -() {
    return F32(-value);
  }

  @override
  F32 operator -(Float other) {
    return F32(value - other.value);
  }

  @override
  F32 operator /(Float other) {
    return F32(value / other.value);
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
  F32 abs() {
    return F32(value.abs());
  }

  @override
  F32 pow(Float exponent) {
    var result = 1.0;
    for (var i = 0; i < exponent.value; i++) {
      result *= value;
    }
    return F32(result);
  }

  @override
  double get value => data.getFloat32(0);
}

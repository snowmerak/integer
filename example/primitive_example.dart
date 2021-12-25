import 'package:primitive/primitive.dart';

void main() {
  I8 i8 = I8(-100);
  i8 = i8.pow(I8(2));
  print(i8.value);
  print(i8.data.buffer.asUint8List());

  I16 i16 = I16(-156);
  i16 = i16.pow(I16(2));
  print(i16.value);
  print(i16.data.buffer.asUint8List());

  I32 i32 = I32(-199);
  i32 = i32.pow(I32(2));
  print(i32.value);
  print(i32.data.buffer.asUint8List());

  I64 i64 = I64(-121);
  i64 = i64.pow(I64(2));
  print(i64.value);
  print(i64.data.buffer.asUint8List());

  print(U8(100) + U8(200));
  print(U16(35345) + U16(56767));
  print(U32(23423442) + U32(345645345));
  print(U64(45253213342342332) + U64(52343213312349872));

  print(F32(34.23) * F32(23.78));
  print(F64(-304.23) * F32(-12.34));
  print(F64(34.23) * F64(23.78));

  var u64 = U64(342342);
  var buf = u64.toBytes();
  print(buf);
  print(U64.fromBytes(buf));
}

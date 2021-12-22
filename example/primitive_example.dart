import 'package:primitive/primitive.dart';

void main() {
  I8 i8 = I8(-100);
  i8 = i8.pow(I8(2));
  print(i8.value);

  I16 i16 = I16(-156);
  i16 = i16.pow(I16(2));
  print(i16.value);

  I32 i32 = I32(-199);
  i32 = i32.pow(I32(2));
  print(i32.value);

  I64 i64 = I64(-121);
  i64 = i64.pow(I64(2));
  print(i64.value);

  print(U8(100) + U8(200));
  print(U16(35345) + U16(56767));
  print(U32(23423442) + U32(345645345));
  print(U64(BigInt.from(45253213342342332)) +
      U64(BigInt.from(52343213312349872)));
}

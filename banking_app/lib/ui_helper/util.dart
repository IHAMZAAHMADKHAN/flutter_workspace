import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle mtextstyleh1({
  Color color = Colors.black,
}) {
  return GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    fontSize: 36.sp,
    color: color,
  );
}

TextStyle mtextstyleh2({
  color = Colors.black,
  double fontSize = 32,
}) {
  return GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    fontSize: fontSize,
  );
}

TextStyle mtextstylep({
  Color color = Colors.black,
}) {
  return GoogleFonts.poppins(
    fontWeight: FontWeight.normal,
    fontSize: 20.sp,
    color: color,
  );
}

TextStyle mtextstyleh3({
  color = Colors.black,
  double fontSize = 20,
}) {
  return GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    fontSize: fontSize,
  );
}

TextStyle mtextstyleh4({
  color = Colors.black,
  double fontSize = 12,
}) {
  return GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    fontSize: fontSize,
  );
}

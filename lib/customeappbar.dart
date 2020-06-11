import 'package:flutter/material.dart';
class CustomAppBar extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height);
    path.quadraticBezierTo(size.width , size.height - 150, size.width, size.height);
    path.quadraticBezierTo(size.height -190, size.height + 390, size.width, size.height);
    path.lineTo(size.width,0.0);
   return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
   return false;
  }
}
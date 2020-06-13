import 'package:flutter/material.dart';
class CustomAppBar extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height - 20);
    var firstControlPoint = new Offset(size.width / 5, size.height + 15);
    var firstEndPoint = new Offset(size.width / 1.7 , size.height - 80.0);
    path.quadraticBezierTo(firstControlPoint.dx , firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = new Offset(size.width - (size.width / 8), size.height - 150);
    var secondEndPoint = new Offset(size.width , size.height - 110.0);
    path.quadraticBezierTo(secondControlPoint.dx , secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width,size.height - 500);
    path.lineTo(size.width,0.0);
    path.close();
   return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
   return false;
  }
}
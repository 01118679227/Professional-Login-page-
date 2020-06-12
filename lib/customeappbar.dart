import 'package:flutter/material.dart';
class CustomAppBar extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height - 50);
    var firstControlPoint = new Offset(size.width / 4, size.height + 15);
    var firstEndPoint = new Offset(size.width / 2.25, size.height - 10.0);
    path.quadraticBezierTo(firstControlPoint.dx , firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = new Offset(size.width - (size.width / 10), size.height - 70);
    var secondEndPoint = new Offset(size.width, size.height - 20.0);
    path.quadraticBezierTo(secondControlPoint.dx , secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width,size.height - 300);
    path.lineTo(size.width,0.0);
    path.close();
   return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
   return false;
  }
}
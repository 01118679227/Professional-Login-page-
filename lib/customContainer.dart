import 'package:flutter/material.dart';
class CustomContainer extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    var sw = size.width;
    var sh = size.height;


    //path.cubicTo(sw/12, 150.0, sw/2, 2*sh/20, 2*sh/12, 2*sh/5);
    path.cubicTo(3*sw/6, 2*sw/7, 3*sw/6, 10.0, 5*sw/6, 0.0);
     path.cubicTo(150*sw/2, 0.0, 5*sw/12, 2*sh/50, 6*sw/20, 2*sh/100);
    path.lineTo(sh * 150, sh);
    path.lineTo(0.0, sh);
    path.close();
   return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
   return false;
  }
}
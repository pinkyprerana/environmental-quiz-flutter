import 'package:flutter/material.dart';

class DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashWidth = 5, dashSpace = 8, startX = 0;
    final paint = Paint()
      ..color = const Color(0xFFDBE3DB)
      ..strokeWidth = 2;
    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

// import 'package:flutter/material.dart';

// class DashedLineHorizontalPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     double dashWidth = 5, dashSpace = 5, startX = 0;
//     final paint = Paint()
//       ..color = Colors.grey.shade300
//       ..strokeWidth = 1; // Set stroke width to height for horizontal line
//     while (startX < size.width) {
//       canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
//       startX += dashWidth + dashSpace;
//     }
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }

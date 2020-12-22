import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      color: Color(0xFF615AAB),
    );
  }
}

class HeaderBordesRedondeados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      decoration: BoxDecoration(
          color: Color(0xFF615AAB),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(70),
              bottomRight: Radius.circular(70))),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xFF615AAB),
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    //propiedades
    lapiz.color = Color(0xFF615AAB);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 2.0;

    final path = Path();
    path.moveTo(0, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.32);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height * 0.5);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderTriangular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xFF615AAB),
      child: CustomPaint(
        painter: _HeaderTriangularPainter(),
      ),
    );
  }
}

class _HeaderTriangularPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    //propiedades
    lapiz.color = Color(0xFF615AAB);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 2.0;

    final path = Path();
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderPico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xFF615AAB),
      child: CustomPaint(
        painter: _HeaderPicoPainter(),
      ),
    );
  }
}

class _HeaderPicoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    //propiedades
    lapiz.color = Color(0xFF615AAB);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 2.0;

    final path = Path();
    path.lineTo(0, size.height * 0.30);
    path.lineTo(size.width * 0.5, size.height * 0.40);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderCurvo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xFF615AAB),
      child: CustomPaint(
        painter: _HeaderCurvoPainter(),
      ),
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    //propiedades
    lapiz.color = Color(0xFF615AAB);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 10.0;

    final path = Path();
    path.lineTo(0, size.height * 0.25);
    //path.lineTo(size.width, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.45, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderWave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xFF615AAB),
      child: CustomPaint(
        painter: _HeaderWavePainter(),
      ),
    );
  }
}

class _HeaderWavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    //propiedades
    lapiz.color = Color(0xFF615AAB);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 10.0;

    final path = Path();
    path.lineTo(0, size.height * 0.25);
    //path.lineTo(size.width, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30,
        size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderWaveGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xFF615AAB),
      child: CustomPaint(
        painter: _HeaderWaveGradientPainter(),
      ),
    );
  }
}

class _HeaderWaveGradientPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Rect.fromCircle(center: Offset(165.0, 55.0), radius: 180);
    final Gradient gradiente = LinearGradient(colors: <Color>[
      Color(0xff6D05E8),
      Color(0xffC012FF),
      Color(0xff6D05FA),
    ]);
    final lapiz = Paint()..shader = gradiente.createShader(rect);
    //propiedades
    lapiz.color = Colors.red;
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 10.0;

    final path = Path();
    path.lineTo(0, size.height * 0.25);
    //path.lineTo(size.width, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30,
        size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

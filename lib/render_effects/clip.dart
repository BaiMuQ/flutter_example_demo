import 'package:flutter/material.dart';

class ClipExample extends StatefulWidget {
  const ClipExample({Key? key}) : super(key: key);

  @override
  State<ClipExample> createState() => _ClipExampleState();
}

class _ClipExampleState extends State<ClipExample> {
  double dx = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clip'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipOval(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.grey,
                  ),
                ),
                const Text(
                  "ClipOval",
                  style: TextStyle(fontSize: 28),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Banner(
                    location: BannerLocation.topEnd,
                    message: "Hello",
                    child: Container(
                      width: 200,
                      height: 80,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const Text(
                  "ClipRRect",
                  style: TextStyle(fontSize: 28),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRect(
                  child: Banner(
                    location: BannerLocation.topEnd,
                    message: "Hello",
                    child: Container(
                      width: 200,
                      height: 80,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const Text(
                  "ClipRect",
                  style: TextStyle(fontSize: 28),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipPath(
                  clipper: TriangleClipper(),
                  child: Container(
                    width: 200,
                    height: 80,
                    color: Colors.grey,
                  ),
                ),
                const Text(
                  "ClipPath",
                  style: TextStyle(fontSize: 28),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onPanUpdate: (details) {
                    setState(() {
                      dx = details.localPosition.dx;
                    });
                  },
                  child: ClipPath(
                    clipper: ArcClipper(dx),
                    child: Container(
                      width: 200,
                      height: 200,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const Text(
                  "ClipPath",
                  style: TextStyle(fontSize: 28),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width / 2, 0)
      ..lineTo(size.width, size.height)
      ..close();
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}

class ArcClipper extends CustomClipper<Path> {
  final double dx;

  ArcClipper(this.dx);

  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(0, size.height)
      ..quadraticBezierTo(dx, 0, size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();
  }

  @override
  bool shouldReclip(ArcClipper old) => dx != old.dx;
}

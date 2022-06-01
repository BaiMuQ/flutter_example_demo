import 'package:flutter/material.dart';

class DragTargetExample extends StatefulWidget {
  const DragTargetExample({Key? key}) : super(key: key);

  @override
  State<DragTargetExample> createState() => _DragTargetExampleState();
}

class _DragTargetExampleState extends State<DragTargetExample> {
  final List<Color> _currentColors = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('dragTarget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DragTarget(
              builder: (context, List<dynamic> candidateDate, rejectedData) {
                return Container(
                  width: 100,
                  height: 100,
                  color: candidateDate.isNotEmpty
                      ? candidateDate.first.withOpacity(0.5)
                      : getMixedColor(),
                );
              },
              onWillAccept: (Color? value) => value != null,
              onAccept: (Color value) => _currentColors.add(value),
            ),
            const SizedBox(
              height: 20,
            ),
            Wrap(
              children: [
                for (int i = 0; i < 18; i++)
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Draggable<Color>(
                      data: Colors.primaries[i],
                      child: Container(
                        color: Colors.primaries[i],
                        width: 50,
                        height: 50,
                      ),
                      feedback: Container(
                        color: Colors.primaries[i],
                        width: 50,
                        height: 50,
                      ),
                      childWhenDragging: Container(
                        color: Colors.white,
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }

  getMixedColor() {
    if (_currentColors.isEmpty) return Colors.grey;
    int r = 0, g = 0, b = 0;
    for (var c in _currentColors) {
      r += c.red;
      g += c.green;
      b += c.blue;
    }
    final count = _currentColors.length;
    return Color.fromARGB(255, r ~/ count, g ~/ count, b ~/ count);
  }
}

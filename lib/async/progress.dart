import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressExample extends StatelessWidget {
  const ProgressExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress'),
      ),
      body: ListView(
        children: <Widget>[
          const Center(
            child: CircularProgressIndicator(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CircularProgressIndicator(
                value: 0.2,
              ),
              CircularProgressIndicator(
                value: 0.6,
              ),
              CircularProgressIndicator(
                value: 0.8,
              ),
              CircularProgressIndicator(
                value: 1,
              ),
            ],
          ),
          Center(
            child: CircularProgressIndicator(
              strokeWidth: 8.0,
              valueColor: const AlwaysStoppedAnimation(Colors.red),
              backgroundColor: Colors.grey[400],
              value: 0.75,
            ),
          ),
          Center(
            child: Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(50),
              ),
              child: CircularProgressIndicator(
                strokeWidth: 8.0,
                valueColor: const AlwaysStoppedAnimation(Colors.red),
                backgroundColor: Colors.grey[400],
                value: 0.75,
              ),
            ),
          ),
          const Center(
            child: ColorfulIndicator(),
          ),
          LinearProgressIndicator(
            value: 0.45,
            valueColor: const AlwaysStoppedAnimation(Colors.red),
            backgroundColor: Colors.grey[400],
            minHeight: 15,
          ),
          SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: LinearProgressIndicator(
                    value: 0.12,
                    valueColor: const AlwaysStoppedAnimation(Colors.red),
                    backgroundColor: Colors.grey[400],
                    minHeight: 15,
                  ),
                ),
                RotatedBox(
                  quarterTurns: -1,
                  child: LinearProgressIndicator(
                    value: 0.88,
                    valueColor: const AlwaysStoppedAnimation(Colors.blue),
                    backgroundColor: Colors.grey[400],
                    minHeight: 15,
                  ),
                )
              ],
            ),
          ),
          const CupertinoActivityIndicator(
            animating: false,
            radius: 24,
          )
        ].map<Widget>((Widget e) {
          return Padding(padding: const EdgeInsets.all(10), child: e);
        }).toList(),
      ),
    );
  }
}

class ColorfulIndicator extends StatefulWidget {
  const ColorfulIndicator({Key? key}) : super(key: key);

  @override
  State<ColorfulIndicator> createState() => _ColorfulIndicatorState();
}

class _ColorfulIndicatorState extends State<ColorfulIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _container;

  @override
  void initState() {
    _container = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    _container.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      valueColor: ColorTween(
        begin: Colors.red,
        end: Colors.blue,
      ).animate(_container),
    );
  }
}

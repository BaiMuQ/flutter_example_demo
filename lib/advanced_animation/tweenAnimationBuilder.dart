import 'package:flutter/material.dart';

class TweenAnimationBuilderExample extends StatelessWidget {
  const TweenAnimationBuilderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TweenAnimationBuilder'),
      ),
      body: const TweenAnimationBuilderDemo(),
    );
  }
}

class TweenAnimationBuilderDemo extends StatefulWidget {
  const TweenAnimationBuilderDemo({Key? key}) : super(key: key);

  @override
  State<TweenAnimationBuilderDemo> createState() =>
      _TweenAnimationBuilderDemoState();
}

class _TweenAnimationBuilderDemoState extends State<TweenAnimationBuilderDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: AnimatedFlipCounter(
        duration: Duration(seconds: 1),
        value: 2022,
      ),
    );
  }
}

class AnimatedFlipCounter extends StatelessWidget {
  final int value;
  final Duration duration;
  final double size;
  const AnimatedFlipCounter({
    Key? key,
    required this.value,
    required this.duration,
    this.size = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> digits = value == 0 ? [0] : [];
    int v = value;
    if (v < 0) {
      v *= -1;
    }
    while (v > 0) {
      digits.add(v);
      v = v ~/ 10;
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(digits.length, (int i) {
        return AnimationCounter(
            key: ValueKey(digits.length - i),
            value: digits[digits.length - i - 1],
            duration: duration,
            size: size);
      }),
    );
  }
}

class AnimationCounter extends StatelessWidget {
  final int value;
  final Duration duration;
  final double size;
  const AnimationCounter(
      {Key? key,
      required this.value,
      required this.duration,
      required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: duration,
      tween: Tween(
        begin: value.toDouble(),
        end: value.toDouble(),
      ),
      builder: (BuildContext context, double value, Widget? child) {
        final whole = value ~/ 1;
        final docimal = value - whole;
        print(value);
        return Container(
          color: Colors.blue,
          height: size,
          width: size / 1.8,
          child: Stack(
            children: [
              Positioned(
                top: -100 * docimal, // 0 -> -100
                child: Opacity(
                  opacity: 1 - docimal, // 1 - 0
                  child: Text(
                    "${whole % 10}",
                    style: const TextStyle(color: Colors.white, fontSize: 100),
                  ),
                ),
              ),
              Positioned(
                top: 100 - 100 * docimal, // 100 ->0
                child: Opacity(
                  opacity: docimal,
                  child: Text(
                    "${(whole + 1) % 10}",
                    style: const TextStyle(color: Colors.white, fontSize: 100),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

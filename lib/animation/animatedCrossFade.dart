import 'package:flutter/material.dart';

class AnimatedCrossFadeExample extends StatefulWidget {
  const AnimatedCrossFadeExample({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadeExample> createState() =>
      _AnimatedCrossFadeExampleState();
}

class _AnimatedCrossFadeExampleState extends State<AnimatedCrossFadeExample> {
  bool _show = false;
  @override
  Widget build(BuildContext context) {
    final box1 = Container(
      key: UniqueKey(),
      width: 50,
      height: 200,
      color: Colors.grey,
    );
    final box2 = Container(
      width: 80,
      height: 50,
      color: Colors.black,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedCrossFade'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "AnimatedSwitcher",
                style: TextStyle(fontSize: 20),
              ),
              AnimatedSwitcher(
                duration: const Duration(seconds: 5),
                child: _show ? box1 : box2,
              ),
              Flexible(
                child: ElevatedButton(
                  child: const Text("Swap"),
                  onPressed: () => setState(() {
                    _show = !_show;
                  }),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "AnimatedCrossFade",
                style: TextStyle(fontSize: 20),
              ),
              AnimatedCrossFade(
                duration: const Duration(seconds: 5),
                firstChild: box1,
                secondChild: box2,
                crossFadeState: _show
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
              ),
              Flexible(
                child: ElevatedButton(
                  child: const Text("Swap"),
                  onPressed: () => setState(() {
                    _show = !_show;
                  }),
                ),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          setState(() {
            _show = !_show;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

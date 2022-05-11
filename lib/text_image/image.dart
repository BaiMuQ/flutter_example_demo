import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('RichText'),
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  color: Colors.grey,
                  width: 150.0,
                  height: 100.0,
                  child: const Image(
                    image: AssetImage("assets/images/avatar.jpeg"),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text('加载本地图片 AssetImage'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  color: Colors.grey,
                  width: 150.0,
                  height: 100.0,
                  child: Image.asset(
                    "assets/images/avatar.jpeg",
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text('加载本地图片 Image.asset'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  color: Colors.grey,
                  width: 150.0,
                  height: 100.0,
                  child: Image(
                      image: const NetworkImage(
                        "https://picsum.photos/id/350/200/200",
                      ),
                      frameBuilder:
                          (context, child, frame, wasSynchronouslyLoaded) {
                        return AnimatedOpacity(
                          opacity: frame == null ? 0 : 1,
                          duration: const Duration(seconds: 1),
                          child: child,
                        );
                      }),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text('加载网络图片 NetworkImage'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  color: Colors.grey,
                  width: 150.0,
                  height: 100.0,
                  child: Image.network(
                    "https://picsum.photos/id/352/200/200",
                    loadingBuilder: (context, child, progress) {
                      if (progress == null) return child;
                      final percent = progress.cumulativeBytesLoaded /
                          progress.expectedTotalBytes! *
                          100;
                      return Text(
                        "加载 $percent %",
                        style: const TextStyle(color: Colors.blue),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text('加载网络图片 Image.network'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  color: Colors.grey,
                  height: 100,
                  width: 150,
                  child: Image.asset(
                    "assets/images/avatar.jpeg",
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text('BoxFit.fill')
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  color: Colors.grey,
                  height: 100,
                  width: 150,
                  child: Image.asset(
                    "assets/images/avatar.jpeg",
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text('BoxFit.contain'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  color: Colors.grey,
                  height: 100,
                  width: 150,
                  child: Image.asset(
                    "assets/images/avatar.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text('BoxFit.cover'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  color: Colors.grey,
                  height: 100,
                  width: 150,
                  child: Image.asset(
                    "assets/images/avatar.jpeg",
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text('BoxFit.fitWidth'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  color: Colors.grey,
                  height: 100,
                  width: 150,
                  child: Image.asset(
                    "assets/images/avatar.jpeg",
                    fit: BoxFit.fitHeight,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text('BoxFit.fitHeight'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  color: Colors.grey,
                  height: 100,
                  width: 150,
                  child: Image.asset(
                    "assets/images/avatar.jpeg",
                    fit: BoxFit.scaleDown,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text('BoxFit.scaleDown'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  color: Colors.grey,
                  height: 100,
                  width: 150,
                  child: Image.asset(
                    "assets/images/avatar.jpeg",
                    fit: BoxFit.none,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text('BoxFit.none'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  color: Colors.grey,
                  height: 100,
                  width: 150,
                  child: Image.asset(
                    "assets/images/avatar.jpeg",
                    color: Colors.blue,
                    colorBlendMode: BlendMode.difference,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text('BlendMode.difference'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  color: Colors.grey,
                  width: 150.0,
                  height: 200.0,
                  child: Image.asset(
                    "assets/images/avatar.jpeg",
                    repeat: ImageRepeat.repeatY,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text('ImageRepeat.repeatY'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  color: Colors.grey,
                  width: 150.0,
                  height: 100.0,
                  child: Image.asset(
                    "assets/images/avatar.jpeg",
                    repeat: ImageRepeat.repeatX,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text('ImageRepeat.repeatX'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  color: Colors.grey,
                  width: 150.0,
                  height: 100.0,
                  child: FadeInImage(
                    placeholder: AssetImage("assets/images/avatar.jpeg"),
                    image: NetworkImage(
                      "https://picsum.photos/id/350/200/200",
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text('FadeInImage'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  color: Colors.grey,
                  width: 150.0,
                  height: 100.0,
                  child: FadeInImage.assetNetwork(
                    placeholder: "assets/images/avatar.jpeg",
                    image: "https://picsum.photos/id/350/200/200",
                    fadeOutDuration: const Duration(seconds: 2),
                    fadeInDuration: const Duration(seconds: 3),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text('FadeInImage'),
              ],
            ),
          ],
        ));
  }
}

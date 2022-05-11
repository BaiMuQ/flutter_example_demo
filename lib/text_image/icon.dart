import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconExample extends StatelessWidget {
  const IconExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon'),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.refresh,
                color: Colors.green,
                size: 36,
              ),
              const Icon(
                Icons.share,
                color: Colors.green,
                size: 36,
              ),
              const Icon(
                Icons.fingerprint,
                color: Colors.green,
                size: 36,
              ),
              const Icon(
                CupertinoIcons.share,
                color: Colors.green,
                size: 36,
                semanticLabel: "内容分享",
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.blue),
                child: const Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 36,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          IconTheme(
            data: const IconThemeData(size: 48, color: Colors.grey),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.close),
                Icon(
                  Icons.arrow_back,
                  size: 24,
                ),
                Icon(
                  Icons.star,
                  color: Colors.black,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

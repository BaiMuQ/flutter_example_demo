import 'package:flutter/material.dart';
import 'package:flutter_example_start/routes/index.dart';

class AsyncMain extends StatelessWidget {
  const AsyncMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = <Widget>[
      const Padding(
        padding: EdgeInsets.only(left: 15, top: 15),
        child: Text(
          '异步操作 - Async',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.indigo),
        ),
      ),
      _buildListTitle(context, 'progress'),
      _buildListTitle(context, 'future'),
    ];
    return ListView(
      children: children,
    );
  }

  _buildListTitle(BuildContext context, String title) {
    return ListTile(
      title: Text(
          '${title[0].toUpperCase()}${title.substring(1)} (Async > $title)'),
      subtitle: Text('Navigator.pushNamed("$async/$title")'),
      onTap: () => Navigator.of(context).pushNamed('$async/$title'),
    );
  }
}

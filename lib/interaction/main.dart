import 'package:flutter/material.dart';
import 'package:flutter_example_start/routes/index.dart';

class InteractionMain extends StatelessWidget {
  const InteractionMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = <Widget>[
      const Padding(
        padding: EdgeInsets.only(left: 15, top: 15),
        child: Text(
          '人机交互 - Interaction',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.indigo),
        ),
      ),
      _buildListTitle(context, 'gestureDetector'),
      _buildListTitle(context, 'listener'),
      _buildListTitle(context, 'mouseRegion'),
      _buildListTitle(context, 'ignorePointer'),
      _buildListTitle(context, 'absorbPointer'),
      _buildListTitle(context, 'draggable'),
      _buildListTitle(context, 'dragTarget'),
    ];
    return ListView(
      children: children,
    );
  }

  _buildListTitle(BuildContext context, String title) {
    return ListTile(
      title: Text(
          '${title[0].toUpperCase()}${title.substring(1)} ( Interaction > $title)'),
      subtitle: Text('Navigator.pushNamed("$interaction/$title")'),
      onTap: () => Navigator.of(context).pushNamed('$interaction/$title'),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_example_start/routes/index.dart';

class OverlayAndDialogMain extends StatelessWidget {
  const OverlayAndDialogMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = <Widget>[
      const Padding(
        padding: EdgeInsets.only(left: 15, top: 15),
        child: Text(
          '悬浮与弹窗 - Overlay & Dialog',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.indigo),
        ),
      ),
      _buildListTitle(context, 'overlayEntry'),
      _buildListTitle(context, 'compositedTransform'),
      _buildListTitle(context, 'showDialog'),
      _buildListTitle(context, 'alertDialog'),
      _buildListTitle(context, 'simpleDialog'),
      _buildListTitle(context, 'modalBarrier'),
      _buildListTitle(context, 'bottomSheet'),
    ];
    return ListView(
      children: children,
    );
  }

  _buildListTitle(BuildContext context, String title) {
    return ListTile(
      title: Text(
          '${title[0].toUpperCase()}${title.substring(1)} ( OverlayAndDialog > $title)'),
      subtitle: Text('Navigator.pushNamed("$overlayAndDialog/$title")'),
      onTap: () => Navigator.of(context).pushNamed('$overlayAndDialog/$title'),
    );
  }
}

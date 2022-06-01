import 'package:flutter/material.dart';
import 'package:flutter_example_start/routes/index.dart';

class RenderEffectsMain extends StatelessWidget {
  const RenderEffectsMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = <Widget>[
      const Padding(
        padding: EdgeInsets.only(left: 15, top: 15),
        child: Text(
          '渲染与特效 - Render & Effects',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.indigo),
        ),
      ),
      _buildListTitle(context, 'opacity'),
      _buildListTitle(context, 'decoratedBox'),
      _buildListTitle(context, 'physicalModel'),
      _buildListTitle(context, 'rotatedBox'),
      _buildListTitle(context, 'transform'),
      _buildListTitle(context, 'imageFiltered'),
      _buildListTitle(context, 'backDropFilter'),
      _buildListTitle(context, 'shaderMask'),
      _buildListTitle(context, 'clip'),
    ];
    return ListView(
      children: children,
    );
  }

  _buildListTitle(BuildContext context, String title) {
    return ListTile(
      title: Text(
          '${title[0].toUpperCase()}${title.substring(1)} (RenderEffects > $title)'),
      subtitle: Text('Navigator.pushNamed("$renderEffects/$title")'),
      onTap: () => Navigator.of(context).pushNamed('$renderEffects/$title'),
    );
  }
}

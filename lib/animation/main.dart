import 'package:flutter/material.dart';
import 'package:flutter_example_start/routes/index.dart';

class AnimationMain extends StatelessWidget {
  const AnimationMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = <Widget>[
      const Padding(
        padding: EdgeInsets.only(left: 15, top: 15),
        child: Text(
          '过度动画 - Animation',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.indigo),
        ),
      ),
      _buildListTitle(context, 'curves'),
      _buildListTitle(context, 'animatedContainer'),
      _buildListTitle(context, 'animatedSwitcher'),
      _buildListTitle(context, 'animatedPadding'),
      _buildListTitle(context, 'animatedPositioned'),
      _buildListTitle(context, 'animatedOpacity'),
      _buildListTitle(context, 'animatedDefaultTextStyle'),
      _buildListTitle(context, 'animatedCrossFade'),
    ];
    return ListView(
      children: children,
    );
  }

  _buildListTitle(BuildContext context, String title) {
    return ListTile(
      title: Text(
          '${title[0].toUpperCase()}${title.substring(1)} ( Animation > $title)'),
      subtitle: Text('Navigator.pushNamed("$animation/$title")'),
      onTap: () => Navigator.of(context).pushNamed('$animation/$title'),
    );
  }
}

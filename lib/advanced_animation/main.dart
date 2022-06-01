import 'package:flutter/material.dart';
import 'package:flutter_example_start/routes/index.dart';

class AdvancedAnimationMain extends StatelessWidget {
  const AdvancedAnimationMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = <Widget>[
      const Padding(
        padding: EdgeInsets.only(left: 15, top: 15),
        child: Text(
          '进阶动画 - Advanced Animation',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.indigo),
        ),
      ),
      _buildListTitle(context, 'rotationTransition'),
      _buildListTitle(context, 'fadeTransition'),
      _buildListTitle(context, 'scaleTransition'),
      _buildListTitle(context, 'sizeTransition'),
      _buildListTitle(context, 'slideTransition'),
      _buildListTitle(context, 'positionedTransition'),
      _buildListTitle(context, 'decoratedBoxTransition'),
      _buildListTitle(context, 'animatedIcon'),
      _buildListTitle(context, 'tweenAnimationBuilder'),
      _buildListTitle(context, 'animatedBuilder'),
    ];
    return ListView(
      children: children,
    );
  }

  _buildListTitle(BuildContext context, String title) {
    return ListTile(
      title: Text(
          '${title[0].toUpperCase()}${title.substring(1)} (AdvancedAnimation > $title)'),
      subtitle: Text('Navigator.pushNamed("$advancedAnimation/$title")'),
      onTap: () => Navigator.of(context).pushNamed('$advancedAnimation/$title'),
    );
  }
}

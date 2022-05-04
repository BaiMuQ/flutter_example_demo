import 'package:flutter/material.dart';
import 'package:flutter_example_start/routes/index.dart';

class BasisLayoutMain extends StatelessWidget {
  const BasisLayoutMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = <Widget>[
      const Padding(
        padding: EdgeInsets.only(left: 15, top: 15),
        child: Text(
          '基础布局 - Layout',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.indigo),
        ),
      ),
      _buildListTitle(context, 'flutterLogo'),
      _buildListTitle(context, 'placeholder'),
      _buildListTitle(context, 'container'),
      _buildListTitle(context, 'column'),
      _buildListTitle(context, 'row'),
      _buildListTitle(context, 'wrap'),
      _buildListTitle(context, 'stack'),
      _buildListTitle(context, 'sizedBox'),
      _buildListTitle(context, 'align'),
    ];
    return ListView(
      children: children,
    );
  }

  _buildListTitle(BuildContext context, String title) {
    return ListTile(
      title: Text(
          '${title[0].toUpperCase()}${title.substring(1)} (BasisLayout > $title)'),
      subtitle: Text('Navigator.pushNamed("$basisLayout/$title")'),
      onTap: () => Navigator.of(context).pushNamed('$basisLayout/$title'),
    );
  }
}

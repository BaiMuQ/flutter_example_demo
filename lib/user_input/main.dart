import 'package:flutter/material.dart';
import 'package:flutter_example_start/routes/index.dart';

class UserInputMain extends StatelessWidget {
  const UserInputMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = <Widget>[
      const Padding(
        padding: EdgeInsets.only(left: 15, top: 15),
        child: Text(
          '用户输入 - User Input',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.indigo),
        ),
      ),
      _buildListTitle(context, 'textField'),
      _buildListTitle(context, 'button'),
    ];
    return ListView(
      children: children,
    );
  }

  _buildListTitle(BuildContext context, String title) {
    return ListTile(
      title: Text(
          '${title[0].toUpperCase()}${title.substring(1)} (UserInput > $title)'),
      subtitle: Text('Navigator.pushNamed("$userInput/$title")'),
      onTap: () => Navigator.of(context).pushNamed('$userInput/$title'),
    );
  }
}

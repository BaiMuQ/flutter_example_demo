import 'package:flutter/material.dart';
import 'package:flutter_example_start/routes/index.dart';

class PagingMain extends StatelessWidget {
  const PagingMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = <Widget>[
      const Padding(
        padding: EdgeInsets.only(left: 15, top: 15),
        child: Text(
          '分页呈现 - Paging',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.indigo),
        ),
      ),
      _buildListTitle(context, 'listView'),
      _buildListTitle(context, 'listWheelScrollView'),
      _buildListTitle(context, 'reorderableListView'),
      _buildListTitle(context, 'gridView'),
      _buildListTitle(context, 'scrollbar'),
      _buildListTitle(context, 'refreshIndicator'),
      _buildListTitle(context, 'dismissible'),
      _buildListTitle(context, 'scrollConfiguration'),
      _buildListTitle(context, 'notificationListener'),
      _buildListTitle(context, 'singleChildScrollView'),
    ];
    return ListView(
      children: children,
    );
  }

  _buildListTitle(BuildContext context, String title) {
    return ListTile(
      title: Text(
          '${title[0].toUpperCase()}${title.substring(1)} (Paging > $title)'),
      subtitle: Text('Navigator.pushNamed("$paging/$title")'),
      onTap: () => Navigator.of(context).pushNamed('$paging/$title'),
    );
  }
}

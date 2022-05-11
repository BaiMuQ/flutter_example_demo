import 'package:flutter/material.dart';
import 'package:flutter_example_start/async/index.dart';
import 'package:flutter_example_start/basis_layout/index.dart';
import 'package:flutter_example_start/paging/index.dart';
import 'package:flutter_example_start/text_image/index.dart';
import 'package:flutter_example_start/user_input/index.dart';

const String basisLayout = "/basisLayout";
const String textAndImage = "/textAndImage";
const String userInput = "/userInput";
const String async = "/async";
const String paging = "/paging";
final routes = <String, WidgetBuilder>{
  // basisLayout
  '$basisLayout/flutterLogo': (BuildContext context) =>
      const FlutterLogoExample(),
  '$basisLayout/placeholder': (BuildContext context) =>
      const PlaceholderExample(),
  '$basisLayout/container': (BuildContext context) => const ContainerExample(),
  '$basisLayout/column': (BuildContext context) => const ColumnExample(),
  '$basisLayout/row': (BuildContext context) => const RowExample(),
  '$basisLayout/wrap': (BuildContext context) => const WrapExample(),
  '$basisLayout/stack': (BuildContext context) => const StackExample(),
  '$basisLayout/sizedBox': (BuildContext context) => const SizedBoxExample(),
  '$basisLayout/align': (BuildContext context) => const AlignExample(),
  '$basisLayout/center': (BuildContext context) => const CenterExample(),
  // textAndImage
  '$textAndImage/text': (BuildContext context) => const TextExample(),
  '$textAndImage/richText': (BuildContext context) => const RichTextExample(),
  '$textAndImage/image': (BuildContext context) => const ImageExample(),
  '$textAndImage/icon': (BuildContext context) => const IconExample(),
  // userInput
  '$userInput/textField': (BuildContext context) => const TextFieldExample(),
  '$userInput/button': (BuildContext context) => const ButtonExample(),
  // async
  '$async/progress': (BuildContext context) => const ProgressExample(),
  '$async/future': (BuildContext context) => const FutureExample(),
  // paging
  '$paging/listView': (BuildContext context) => const ListViewExample(),
  '$paging/listWheelScrollView': (BuildContext context) =>
      const ListWheelScrollViewExample(),
  '$paging/reorderableListView': (BuildContext context) =>
      const ReorderableListViewExample(),
  '$paging/gridView': (BuildContext context) => const GridViewExample(),
};

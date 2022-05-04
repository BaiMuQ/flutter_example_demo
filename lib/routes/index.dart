import 'package:flutter/material.dart';
import 'package:flutter_example_start/basis_layout/index.dart';

const String basisLayout = "/basisLayout";

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
};

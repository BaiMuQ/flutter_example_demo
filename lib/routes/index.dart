import 'package:flutter/material.dart';
import 'package:flutter_example_start/advanced_layout/index.dart';
import 'package:flutter_example_start/animation/index.dart';
import 'package:flutter_example_start/async/index.dart';
import 'package:flutter_example_start/basis_layout/index.dart';
import 'package:flutter_example_start/interaction/index.dart';
import 'package:flutter_example_start/paging/index.dart';
import 'package:flutter_example_start/text_image/index.dart';
import 'package:flutter_example_start/user_input/index.dart';

const String basisLayout = "/basisLayout";
const String textAndImage = "/textAndImage";
const String userInput = "/userInput";
const String async = "/async";
const String paging = "/paging";
const String advancedLayout = "/advancedLayout";
const String animation = "/animation";
const String interaction = "/interaction";

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
  '$paging/scrollbar': (BuildContext context) => const ScrollbarExample(),
  '$paging/refreshIndicator': (BuildContext context) =>
      const RefreshIndicatorExample(),
  '$paging/dismissible': (BuildContext context) => const DismissibleExample(),
  '$paging/scrollConfiguration': (BuildContext context) =>
      const ScrollConfigurationExample(),
  '$paging/notificationListener': (BuildContext context) =>
      const NotificationListenerExample(),
  '$paging/singleChildScrollView': (BuildContext context) =>
      const SingleChildScrollViewExample(),
  // advancedLayout
  '$advancedLayout/padding': (BuildContext context) => const PaddingExample(),
  '$advancedLayout/safeArea': (BuildContext context) => const SafeAreaExample(),
  '$advancedLayout/fittedBox': (BuildContext context) =>
      const FittedBoxExample(),
  '$advancedLayout/flex': (BuildContext context) => const FlexExample(),
  '$advancedLayout/limitedBox': (BuildContext context) =>
      const LimitedBoxExample(),
  '$advancedLayout/layoutBuilder': (BuildContext context) =>
      const LayoutBuilderExample(),
  '$advancedLayout/fractionallySizedBox': (BuildContext context) =>
      const FractionallySizedBoxExample(),
  '$animation/animatedContainer': (BuildContext context) =>
      const AnimatedContainerExample(),
  '$animation/animatedSwitcher': (BuildContext context) =>
      const AnimatedSwitcherExample(),
  '$animation/curves': (BuildContext context) => const CurvesExample(),
  '$animation/animatedPadding': (BuildContext context) =>
      const AnimatedPaddingExample(),
  '$animation/animatedPositioned': (BuildContext context) =>
      const AnimatedPositionedExample(),
  '$animation/animatedOpacity': (BuildContext context) =>
      const AnimatedOpacityExample(),
  '$animation/animatedDefaultTextStyle': (BuildContext context) =>
      const AnimatedDefaultTextStyleExample(),
  '$animation/gestureDetector': (BuildContext context) =>
      const AnimatedCrossFadeExample(),
  // interaction
  '$interaction/gestureDetector': (BuildContext context) =>
      const GestureDetectorExample(),
  '$interaction/listener': (BuildContext context) => const ListenerExample(),
  '$interaction/mouseRegion': (BuildContext context) =>
      const MouseRegionExample(),
  '$interaction/ignorePointer': (BuildContext context) =>
      const IgnorePointerExample(),
  '$interaction/absorbPointer': (BuildContext context) =>
      const AbsorbPointerExample(),
  '$interaction/draggable': (BuildContext context) => const DraggableExample(),
  '$interaction/dragTarget': (BuildContext context) =>
      const DragTargetExample(),
};

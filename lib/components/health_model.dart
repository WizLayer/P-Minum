import '/flutter_flow/flutter_flow_util.dart';
import 'health_widget.dart' show HealthWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class HealthModel extends FlutterFlowModel<HealthWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }
}

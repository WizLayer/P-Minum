import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in HomePage widget.
  List<UsersRow>? userTable;
  // Stores action output result for [Backend Call - Query Rows] action in HomePage widget.
  List<UserIntakeHistoryRow>? userHistory;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

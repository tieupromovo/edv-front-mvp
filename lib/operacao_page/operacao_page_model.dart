import '/backend/api_requests/api_calls.dart';
import '/components/drawer_content_cmp_widget.dart';
import '/components/pg_header_cmp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'operacao_page_widget.dart' show OperacaoPageWidget;
import 'package:flutter/material.dart';

class OperacaoPageModel extends FlutterFlowModel<OperacaoPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PgHeaderCmp component.
  late PgHeaderCmpModel pgHeaderCmpModel;
  // Stores action output result for [Backend Call - API (ClientsCheckOut)] action in Button widget.
  ApiCallResponse? apiResultClientqc;
  // Model for DrawerContentCmp component.
  late DrawerContentCmpModel drawerContentCmpModel;

  @override
  void initState(BuildContext context) {
    pgHeaderCmpModel = createModel(context, () => PgHeaderCmpModel());
    drawerContentCmpModel = createModel(context, () => DrawerContentCmpModel());
  }

  @override
  void dispose() {
    pgHeaderCmpModel.dispose();
    drawerContentCmpModel.dispose();
  }
}

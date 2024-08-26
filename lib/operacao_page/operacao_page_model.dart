import '/components/drawer_content_cmp_widget.dart';
import '/components/pg_header_cmp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'operacao_page_widget.dart' show OperacaoPageWidget;
import 'package:flutter/material.dart';

class OperacaoPageModel extends FlutterFlowModel<OperacaoPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for PgHeaderCmp component.
  late PgHeaderCmpModel pgHeaderCmpModel;
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

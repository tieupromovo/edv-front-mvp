import '/backend/api_requests/api_calls.dart';
import '/components/drawer_content_cmp_widget.dart';
import '/components/pg_header_cmp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'acao_create_page_widget.dart' show AcaoCreatePageWidget;
import 'package:flutter/material.dart';

class AcaoCreatePageModel extends FlutterFlowModel<AcaoCreatePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for PgHeaderCmp component.
  late PgHeaderCmpModel pgHeaderCmpModel;
  // State field(s) for txt_name widget.
  FocusNode? txtNameFocusNode;
  TextEditingController? txtNameTextController;
  String? Function(BuildContext, String?)? txtNameTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - API (ActionCreate)] action in btn_Save widget.
  ApiCallResponse? actionCreateResponse;
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
    txtNameFocusNode?.dispose();
    txtNameTextController?.dispose();

    drawerContentCmpModel.dispose();
  }
}

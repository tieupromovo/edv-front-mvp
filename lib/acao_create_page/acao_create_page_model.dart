import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/drawer_content_cmp_widget.dart';
import '/components/pg_header_cmp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'acao_create_page_widget.dart' show AcaoCreatePageWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AcaoCreatePageModel extends FlutterFlowModel<AcaoCreatePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PgHeaderCmp component.
  late PgHeaderCmpModel pgHeaderCmpModel;
  // State field(s) for txt_name widget.
  FocusNode? txtNameFocusNode;
  TextEditingController? txtNameTextController;
  String? Function(BuildContext, String?)? txtNameTextControllerValidator;
  // State field(s) for txtInicio widget.
  FocusNode? txtInicioFocusNode;
  TextEditingController? txtInicioTextController;
  String? Function(BuildContext, String?)? txtInicioTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for txtFim widget.
  FocusNode? txtFimFocusNode;
  TextEditingController? txtFimTextController;
  String? Function(BuildContext, String?)? txtFimTextControllerValidator;
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

    txtInicioFocusNode?.dispose();
    txtInicioTextController?.dispose();

    txtFimFocusNode?.dispose();
    txtFimTextController?.dispose();

    drawerContentCmpModel.dispose();
  }
}

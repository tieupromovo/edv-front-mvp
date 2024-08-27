import '/backend/api_requests/api_calls.dart';
import '/components/drawer_content_cmp_widget.dart';
import '/components/pg_header_cmp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'acao_lojas_create_page_widget.dart' show AcaoLojasCreatePageWidget;
import 'package:flutter/material.dart';

class AcaoLojasCreatePageModel
    extends FlutterFlowModel<AcaoLojasCreatePageWidget> {
  ///  Local state fields for this page.

  int? stateActionID;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PgHeaderCmp component.
  late PgHeaderCmpModel pgHeaderCmpModel;
  // State field(s) for nomeLoja_acao widget.
  FocusNode? nomeLojaAcaoFocusNode;
  TextEditingController? nomeLojaAcaoTextController;
  String? Function(BuildContext, String?)? nomeLojaAcaoTextControllerValidator;
  // State field(s) for txtNome widget.
  FocusNode? txtNomeFocusNode;
  TextEditingController? txtNomeTextController;
  String? Function(BuildContext, String?)? txtNomeTextControllerValidator;
  // State field(s) for txtCidade widget.
  FocusNode? txtCidadeFocusNode;
  TextEditingController? txtCidadeTextController;
  String? Function(BuildContext, String?)? txtCidadeTextControllerValidator;
  // State field(s) for sldMeta widget.
  double? sldMetaValue;
  // Stores action output result for [Backend Call - API (LojaCreate)] action in Button widget.
  ApiCallResponse? lojaCreateResponse;
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
    nomeLojaAcaoFocusNode?.dispose();
    nomeLojaAcaoTextController?.dispose();

    txtNomeFocusNode?.dispose();
    txtNomeTextController?.dispose();

    txtCidadeFocusNode?.dispose();
    txtCidadeTextController?.dispose();

    drawerContentCmpModel.dispose();
  }
}

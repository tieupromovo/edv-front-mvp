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

  // Model for PgHeaderCmp component.
  late PgHeaderCmpModel pgHeaderCmpModel;
  // State field(s) for nomeLoja_acao widget.
  FocusNode? nomeLojaAcaoFocusNode;
  TextEditingController? nomeLojaAcaoTextController;
  String? Function(BuildContext, String?)? nomeLojaAcaoTextControllerValidator;
  // State field(s) for nomeLoja_input widget.
  FocusNode? nomeLojaInputFocusNode;
  TextEditingController? nomeLojaInputTextController;
  String? Function(BuildContext, String?)? nomeLojaInputTextControllerValidator;
  // State field(s) for nomeCidade_input widget.
  FocusNode? nomeCidadeInputFocusNode;
  TextEditingController? nomeCidadeInputTextController;
  String? Function(BuildContext, String?)?
      nomeCidadeInputTextControllerValidator;
  // State field(s) for sld_valorMeta_input widget.
  double? sldValorMetaInputValue;
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

    nomeLojaInputFocusNode?.dispose();
    nomeLojaInputTextController?.dispose();

    nomeCidadeInputFocusNode?.dispose();
    nomeCidadeInputTextController?.dispose();

    drawerContentCmpModel.dispose();
  }
}

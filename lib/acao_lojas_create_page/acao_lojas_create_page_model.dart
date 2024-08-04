import '/backend/api_requests/api_calls.dart';
import '/components/drawer_content_cmp_widget.dart';
import '/components/pg_header_cmp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
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
  // State field(s) for acao_input widget.
  String? acaoInputValue;
  FormFieldController<String>? acaoInputValueController;
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
    unfocusNode.dispose();
    pgHeaderCmpModel.dispose();
    nomeLojaInputFocusNode?.dispose();
    nomeLojaInputTextController?.dispose();

    nomeCidadeInputFocusNode?.dispose();
    nomeCidadeInputTextController?.dispose();

    drawerContentCmpModel.dispose();
  }
}

import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_loja_widget.dart' show EditLojaWidget;
import 'package:flutter/material.dart';

class EditLojaModel extends FlutterFlowModel<EditLojaWidget> {
  ///  State fields for stateful widgets in this component.

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
  // Stores action output result for [Backend Call - API (LojaDelete)] action in btn_Delete widget.
  ApiCallResponse? apiDelete;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomeLojaInputFocusNode?.dispose();
    nomeLojaInputTextController?.dispose();

    nomeCidadeInputFocusNode?.dispose();
    nomeCidadeInputTextController?.dispose();
  }
}

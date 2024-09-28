import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_acao_widget.dart' show EditAcaoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EditAcaoModel extends FlutterFlowModel<EditAcaoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txt_name widget.
  FocusNode? txtNameFocusNode;
  TextEditingController? txtNameTextController;
  String? Function(BuildContext, String?)? txtNameTextControllerValidator;
  // State field(s) for txtInicio widget.
  FocusNode? txtInicioFocusNode;
  TextEditingController? txtInicioTextController;
  final txtInicioMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? txtInicioTextControllerValidator;
  // State field(s) for txtFim widget.
  FocusNode? txtFimFocusNode;
  TextEditingController? txtFimTextController;
  final txtFimMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? txtFimTextControllerValidator;
  // Stores action output result for [Backend Call - API (ActionUpdate)] action in btn_Save widget.
  ApiCallResponse? updateResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNameFocusNode?.dispose();
    txtNameTextController?.dispose();

    txtInicioFocusNode?.dispose();
    txtInicioTextController?.dispose();

    txtFimFocusNode?.dispose();
    txtFimTextController?.dispose();
  }
}

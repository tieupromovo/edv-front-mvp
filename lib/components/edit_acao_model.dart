import '/flutter_flow/flutter_flow_util.dart';
import 'edit_acao_widget.dart' show EditAcaoWidget;
import 'package:flutter/material.dart';

class EditAcaoModel extends FlutterFlowModel<EditAcaoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txt_name widget.
  FocusNode? txtNameFocusNode;
  TextEditingController? txtNameTextController;
  String? Function(BuildContext, String?)? txtNameTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNameFocusNode?.dispose();
    txtNameTextController?.dispose();
  }
}

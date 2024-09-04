import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'edit_acao_widget.dart' show EditAcaoWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditAcaoModel extends FlutterFlowModel<EditAcaoWidget> {
  ///  State fields for stateful widgets in this component.

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

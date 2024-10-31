import '/components/drawer_content_cmp_widget.dart';
import '/components/pg_header_cmp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'relatorio_loja_widget.dart' show RelatorioLojaWidget;
import 'package:flutter/material.dart';

class RelatorioLojaModel extends FlutterFlowModel<RelatorioLojaWidget> {
  ///  Local state fields for this page.

  String? date;

  ///  State fields for stateful widgets in this page.

  // Model for PgHeaderCmp component.
  late PgHeaderCmpModel pgHeaderCmpModel;
  // State field(s) for nomeLoja_acao widget.
  FocusNode? nomeLojaAcaoFocusNode;
  TextEditingController? nomeLojaAcaoTextController;
  String? Function(BuildContext, String?)? nomeLojaAcaoTextControllerValidator;
  // State field(s) for dropDown_dias widget.
  String? dropDownDiasValue;
  FormFieldController<String>? dropDownDiasValueController;
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

    drawerContentCmpModel.dispose();
  }
}

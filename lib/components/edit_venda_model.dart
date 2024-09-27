import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_venda_widget.dart' show EditVendaWidget;
import 'package:flutter/material.dart';

class EditVendaModel extends FlutterFlowModel<EditVendaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for cmbTeam widget.
  int? cmbTeamValue;
  FormFieldController<int>? cmbTeamValueController;
  // Stores action output result for [Backend Call - API (Completed Sale)] action in btn_Save widget.
  ApiCallResponse? apiResultSales;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_venda_widget.dart' show EditVendaWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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

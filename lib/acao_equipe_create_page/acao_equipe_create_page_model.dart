import '/backend/api_requests/api_calls.dart';
import '/components/drawer_content_cmp_widget.dart';
import '/components/pg_header_cmp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'acao_equipe_create_page_widget.dart' show AcaoEquipeCreatePageWidget;
import 'package:flutter/material.dart';

class AcaoEquipeCreatePageModel
    extends FlutterFlowModel<AcaoEquipeCreatePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PgHeaderCmp component.
  late PgHeaderCmpModel pgHeaderCmpModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for inputTeamStoreId widget.
  String? inputTeamStoreIdValue;
  FormFieldController<String>? inputTeamStoreIdValueController;
  // State field(s) for inputTeamName widget.
  FocusNode? inputTeamNameFocusNode;
  TextEditingController? inputTeamNameTextController;
  String? Function(BuildContext, String?)? inputTeamNameTextControllerValidator;
  // State field(s) for inputTeamPhone widget.
  FocusNode? inputTeamPhoneFocusNode;
  TextEditingController? inputTeamPhoneTextController;
  String? Function(BuildContext, String?)?
      inputTeamPhoneTextControllerValidator;
  // State field(s) for InputTeamType widget.
  String? inputTeamTypeValue;
  FormFieldController<String>? inputTeamTypeValueController;
  // Stores action output result for [Backend Call - API (TeamCreate)] action in Button widget.
  ApiCallResponse? teamCreateResponse;
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
    inputTeamNameFocusNode?.dispose();
    inputTeamNameTextController?.dispose();

    inputTeamPhoneFocusNode?.dispose();
    inputTeamPhoneTextController?.dispose();

    drawerContentCmpModel.dispose();
  }
}

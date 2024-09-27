import '/backend/api_requests/api_calls.dart';
import '/components/drawer_content_cmp_widget.dart';
import '/components/pg_header_cmp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'acao_equipe_create_page_widget.dart' show AcaoEquipeCreatePageWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AcaoEquipeCreatePageModel
    extends FlutterFlowModel<AcaoEquipeCreatePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for PgHeaderCmp component.
  late PgHeaderCmpModel pgHeaderCmpModel;
  // State field(s) for txtAcao widget.
  FocusNode? txtAcaoFocusNode;
  TextEditingController? txtAcaoTextController;
  String? Function(BuildContext, String?)? txtAcaoTextControllerValidator;
  // State field(s) for txtLoja widget.
  FocusNode? txtLojaFocusNode;
  TextEditingController? txtLojaTextController;
  String? Function(BuildContext, String?)? txtLojaTextControllerValidator;
  // State field(s) for inputTeamName widget.
  FocusNode? inputTeamNameFocusNode;
  TextEditingController? inputTeamNameTextController;
  String? Function(BuildContext, String?)? inputTeamNameTextControllerValidator;
  // State field(s) for inputTeamPhone widget.
  FocusNode? inputTeamPhoneFocusNode;
  TextEditingController? inputTeamPhoneTextController;
  final inputTeamPhoneMask = MaskTextInputFormatter(mask: '(##)#####-####');
  String? Function(BuildContext, String?)?
      inputTeamPhoneTextControllerValidator;
  // State field(s) for InputTeamType widget.
  String? inputTeamTypeValue;
  FormFieldController<String>? inputTeamTypeValueController;
  // Stores action output result for [Backend Call - API (TeamCreate)] action in Button widget.
  ApiCallResponse? teamCreateResponse;
  // Stores action output result for [Backend Call - API (TeamDelete)] action in Icon widget.
  ApiCallResponse? apiDeleteTeam;
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
    txtAcaoFocusNode?.dispose();
    txtAcaoTextController?.dispose();

    txtLojaFocusNode?.dispose();
    txtLojaTextController?.dispose();

    inputTeamNameFocusNode?.dispose();
    inputTeamNameTextController?.dispose();

    inputTeamPhoneFocusNode?.dispose();
    inputTeamPhoneTextController?.dispose();

    drawerContentCmpModel.dispose();
  }
}

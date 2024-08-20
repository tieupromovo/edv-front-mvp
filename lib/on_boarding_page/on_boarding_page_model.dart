import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/drawer_content_cmp_widget.dart';
import '/components/pg_header_cmp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'on_boarding_page_widget.dart' show OnBoardingPageWidget;
import 'package:flutter/material.dart';

class OnBoardingPageModel extends FlutterFlowModel<OnBoardingPageWidget> {
  ///  Local state fields for this page.

  ActionStruct? selectedActionId;
  void updateSelectedActionIdStruct(Function(ActionStruct) updateFn) {
    updateFn(selectedActionId ??= ActionStruct());
  }

  StoreStruct? selectedLojaId;
  void updateSelectedLojaIdStruct(Function(StoreStruct) updateFn) {
    updateFn(selectedLojaId ??= StoreStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Model for PgHeaderCmp component.
  late PgHeaderCmpModel pgHeaderCmpModel;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // Stores action output result for [Backend Call - API (ActionListAll)] action in DropDown widget.
  ApiCallResponse? apiResultadoActionList;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for txtFim widget.
  FocusNode? txtFimFocusNode;
  TextEditingController? txtFimTextController;
  String? Function(BuildContext, String?)? txtFimTextControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
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
    txtFimFocusNode?.dispose();
    txtFimTextController?.dispose();

    tabBarController?.dispose();
    textFieldFocusNode1?.dispose();
    textController2?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();

    drawerContentCmpModel.dispose();
  }
}

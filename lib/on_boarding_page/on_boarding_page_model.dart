import '/backend/api_requests/api_calls.dart';
import '/components/drawer_content_cmp_widget.dart';
import '/components/pg_header_cmp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'on_boarding_page_widget.dart' show OnBoardingPageWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class OnBoardingPageModel extends FlutterFlowModel<OnBoardingPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PgHeaderCmp component.
  late PgHeaderCmpModel pgHeaderCmpModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for txt_name widget.
  FocusNode? txtNameFocusNode;
  TextEditingController? txtNameTextController;
  String? Function(BuildContext, String?)? txtNameTextControllerValidator;
  // State field(s) for txt_phone widget.
  FocusNode? txtPhoneFocusNode;
  TextEditingController? txtPhoneTextController;
  final txtPhoneMask = MaskTextInputFormatter(mask: '(##)#####-####');
  String? Function(BuildContext, String?)? txtPhoneTextControllerValidator;
  // State field(s) for cmb_convite widget.
  String? cmbConviteValue;
  FormFieldController<String>? cmbConviteValueController;
  // Stores action output result for [Backend Call - API (ClientsCheckIn)] action in Button widget.
  ApiCallResponse? apiResultg9b;
  // Stores action output result for [Backend Call - API (ClientsCheckOut)] action in Button widget.
  ApiCallResponse? apiResultjyo;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (Teams CheckIn)] action in Button widget.
  ApiCallResponse? apiResultsnh;
  // Stores action output result for [Backend Call - API (Teams CheckOut)] action in Button widget.
  ApiCallResponse? apiResult5qc;
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
    tabBarController?.dispose();
    txtNameFocusNode?.dispose();
    txtNameTextController?.dispose();

    txtPhoneFocusNode?.dispose();
    txtPhoneTextController?.dispose();

    drawerContentCmpModel.dispose();
  }
}

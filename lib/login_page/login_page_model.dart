import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // Stores action output result for [Backend Call - API (Login)] action in Button widget.
  ApiCallResponse? apiLoginResult;
  // State field(s) for password_newUpdate widget.
  FocusNode? passwordNewUpdateFocusNode;
  TextEditingController? passwordNewUpdateTextController;
  late bool passwordNewUpdateVisibility;
  String? Function(BuildContext, String?)?
      passwordNewUpdateTextControllerValidator;
  // State field(s) for password_new_Confirm_Update widget.
  FocusNode? passwordNewConfirmUpdateFocusNode;
  TextEditingController? passwordNewConfirmUpdateTextController;
  late bool passwordNewConfirmUpdateVisibility;
  String? Function(BuildContext, String?)?
      passwordNewConfirmUpdateTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordNewUpdateVisibility = false;
    passwordNewConfirmUpdateVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    usernameFocusNode?.dispose();
    usernameTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    passwordNewUpdateFocusNode?.dispose();
    passwordNewUpdateTextController?.dispose();

    passwordNewConfirmUpdateFocusNode?.dispose();
    passwordNewConfirmUpdateTextController?.dispose();
  }
}

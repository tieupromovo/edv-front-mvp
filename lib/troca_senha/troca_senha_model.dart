import '/components/drawer_content_cmp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'troca_senha_widget.dart' show TrocaSenhaWidget;
import 'package:flutter/material.dart';

class TrocaSenhaModel extends FlutterFlowModel<TrocaSenhaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

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
  // Model for DrawerContentCmp component.
  late DrawerContentCmpModel drawerContentCmpModel;

  @override
  void initState(BuildContext context) {
    passwordNewUpdateVisibility = false;
    passwordNewConfirmUpdateVisibility = false;
    drawerContentCmpModel = createModel(context, () => DrawerContentCmpModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    passwordNewUpdateFocusNode?.dispose();
    passwordNewUpdateTextController?.dispose();

    passwordNewConfirmUpdateFocusNode?.dispose();
    passwordNewConfirmUpdateTextController?.dispose();

    drawerContentCmpModel.dispose();
  }
}

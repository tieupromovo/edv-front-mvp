import '/components/drawer_content_cmp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'esqueci_senha_page_widget.dart' show EsqueciSenhaPageWidget;
import 'package:flutter/material.dart';

class EsqueciSenhaPageModel extends FlutterFlowModel<EsqueciSenhaPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress_Recover widget.
  FocusNode? emailAddressRecoverFocusNode;
  TextEditingController? emailAddressRecoverTextController;
  String? Function(BuildContext, String?)?
      emailAddressRecoverTextControllerValidator;
  // Model for DrawerContentCmp component.
  late DrawerContentCmpModel drawerContentCmpModel;

  @override
  void initState(BuildContext context) {
    drawerContentCmpModel = createModel(context, () => DrawerContentCmpModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    emailAddressRecoverFocusNode?.dispose();
    emailAddressRecoverTextController?.dispose();

    drawerContentCmpModel.dispose();
  }
}

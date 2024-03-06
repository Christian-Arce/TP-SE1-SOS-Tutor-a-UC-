import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'cambiarcontra_widget.dart' show CambiarcontraWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CambiarcontraModel extends FlutterFlowModel<CambiarcontraWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for currentpass widget.
  FocusNode? currentpassFocusNode;
  TextEditingController? currentpassController;
  late bool currentpassVisibility;
  String? Function(BuildContext, String?)? currentpassControllerValidator;
  // State field(s) for newpass widget.
  FocusNode? newpassFocusNode;
  TextEditingController? newpassController;
  late bool newpassVisibility;
  String? Function(BuildContext, String?)? newpassControllerValidator;
  // Stores action output result for [Custom Action - changePassword] action in Button-Login widget.
  bool? isChange;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    currentpassVisibility = false;
    newpassVisibility = false;
  }

  void dispose() {
    currentpassFocusNode?.dispose();
    currentpassController?.dispose();

    newpassFocusNode?.dispose();
    newpassController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

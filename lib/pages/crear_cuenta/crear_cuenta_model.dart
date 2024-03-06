import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'crear_cuenta_widget.dart' show CrearCuentaWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CrearCuentaModel extends FlutterFlowModel<CrearCuentaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreController;
  String? Function(BuildContext, String?)? nombreControllerValidator;
  // State field(s) for CI widget.
  FocusNode? ciFocusNode;
  TextEditingController? ciController;
  String? Function(BuildContext, String?)? ciControllerValidator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for contrasenha widget.
  FocusNode? contrasenhaFocusNode;
  TextEditingController? contrasenhaController;
  late bool contrasenhaVisibility;
  String? Function(BuildContext, String?)? contrasenhaControllerValidator;
  // State field(s) for confirmar_contrasenha widget.
  FocusNode? confirmarContrasenhaFocusNode;
  TextEditingController? confirmarContrasenhaController;
  late bool confirmarContrasenhaVisibility;
  String? Function(BuildContext, String?)?
      confirmarContrasenhaControllerValidator;
  // State field(s) for CampusField widget.
  String? campusFieldValue;
  FormFieldController<String>? campusFieldValueController;
  // State field(s) for CarreraField widget.
  String? carreraFieldValue;
  FormFieldController<String>? carreraFieldValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contrasenhaVisibility = false;
    confirmarContrasenhaVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    nombreFocusNode?.dispose();
    nombreController?.dispose();

    ciFocusNode?.dispose();
    ciController?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    contrasenhaFocusNode?.dispose();
    contrasenhaController?.dispose();

    confirmarContrasenhaFocusNode?.dispose();
    confirmarContrasenhaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

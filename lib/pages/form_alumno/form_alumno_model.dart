import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'form_alumno_widget.dart' show FormAlumnoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FormAlumnoModel extends FlutterFlowModel<FormAlumnoWidget> {
  ///  Local state fields for this page.

  int index = 0;

  int cantTutores = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for MateriaField widget.
  String? materiaFieldValue;
  FormFieldController<String>? materiaFieldValueController;
  // State field(s) for DiasField widget.
  List<String>? diasFieldValue;
  FormFieldController<String>? diasFieldValueController;
  // State field(s) for TurnoField widget.
  String? turnoFieldValue;
  FormFieldController<String>? turnoFieldValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<TutoresRecord>? posiblesTut;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SolicitudXalumnoRecord? soliAluRef;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/calificar_tutoria_alu/calificar_tutoria_alu_widget.dart';
import '/pages/calificar_tutoria_tutor/calificar_tutoria_tutor_widget.dart';
import '/pages/detalles_solicitud_tutor/detalles_solicitud_tutor_widget.dart';
import '/pages/detalles_tutoria_alu/detalles_tutoria_alu_widget.dart';
import '/pages/detalles_tutoria_tutor/detalles_tutoria_tutor_widget.dart';
import 'notification_widget.dart' show NotificationWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NotificationModel extends FlutterFlowModel<NotificationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in Notification widget.
  TutoresRecord? tutorRef;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

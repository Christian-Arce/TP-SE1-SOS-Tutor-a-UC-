import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'calificar_tutoria_tutor_model.dart';
export 'calificar_tutoria_tutor_model.dart';

class CalificarTutoriaTutorWidget extends StatefulWidget {
  const CalificarTutoriaTutorWidget({
    Key? key,
    required this.tutoriaRef,
  }) : super(key: key);

  final DocumentReference? tutoriaRef;

  @override
  _CalificarTutoriaTutorWidgetState createState() =>
      _CalificarTutoriaTutorWidgetState();
}

class _CalificarTutoriaTutorWidgetState
    extends State<CalificarTutoriaTutorWidget> {
  late CalificarTutoriaTutorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalificarTutoriaTutorModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 320.0,
      decoration: BoxDecoration(
        color: Color(0xFF39A5D1),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: Color(0xFF04344D),
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                  child: Text(
                    'Califica la Tutoria',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RatingBar.builder(
                      onRatingUpdate: (newValue) =>
                          setState(() => _model.ratingBarValue = newValue),
                      itemBuilder: (context, index) => Icon(
                        Icons.star_sharp,
                        color: FlutterFlowTheme.of(context).warning,
                      ),
                      direction: Axis.horizontal,
                      initialRating: _model.ratingBarValue ??= 3.0,
                      unratedColor: FlutterFlowTheme.of(context).accent3,
                      itemCount: 5,
                      itemSize: 60.0,
                      glowColor: FlutterFlowTheme.of(context).warning,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: FFButtonWidget(
                        onPressed: () async {
                          setState(() {
                            _model.calificacion =
                                _model.ratingBarValue!.round();
                          });

                          await widget.tutoriaRef!
                              .update(createTutoriaRecordData(
                            calificacionAlu: _model.ratingBarValue?.round(),
                          ));
                          _model.tutoriaDoc = await queryTutoriaRecordOnce(
                            queryBuilder: (tutoriaRecord) =>
                                tutoriaRecord.where(
                              'tutor',
                              isEqualTo: currentUserReference,
                            ),
                            singleRecord: true,
                          ).then((s) => s.firstOrNull);
                          _model.aluDoc = await queryUsersRecordOnce(
                            queryBuilder: (usersRecord) => usersRecord.where(
                              'uid',
                              isEqualTo: _model.tutoriaDoc?.alumno?.id,
                            ),
                            singleRecord: true,
                          ).then((s) => s.firstOrNull);

                          await _model.aluDoc!.reference.update({
                            ...createUsersRecordData(
                              calificacion: (_model.aluDoc!.calificacion +
                                      _model.ratingBarValue!) /
                                  (_model.aluDoc!.cantCalificaciones + 1),
                            ),
                            ...mapToFirestore(
                              {
                                'cant_calificaciones': FieldValue.increment(1),
                              },
                            ),
                          });
                          Navigator.pop(context);

                          setState(() {});
                        },
                        text: 'Aceptar',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFF059F94),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

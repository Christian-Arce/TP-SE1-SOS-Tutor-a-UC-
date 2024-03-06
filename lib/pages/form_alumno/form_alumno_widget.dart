import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'form_alumno_model.dart';
export 'form_alumno_model.dart';

class FormAlumnoWidget extends StatefulWidget {
  const FormAlumnoWidget({
    Key? key,
    this.tutoresDisponibles,
  }) : super(key: key);

  final TutoresRecord? tutoresDisponibles;

  @override
  _FormAlumnoWidgetState createState() => _FormAlumnoWidgetState();
}

class _FormAlumnoWidgetState extends State<FormAlumnoWidget> {
  late FormAlumnoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormAlumnoModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.index = 0;
      });
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF04344D),
        appBar: AppBar(
          backgroundColor: Color(0xFF04344D),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed('Home');
            },
          ),
          title: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Formulario Alumno',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
              ),
            ],
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 410.0,
                height: 597.0,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.00, -1.00),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.00, -1.00),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/logo-sosUC.png',
                                    width: 250.0,
                                    height: 100.0,
                                    fit: BoxFit.fill,
                                    alignment: Alignment(0.00, 0.00),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    40.0, 20.0, 40.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 70.0,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.00, 0.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            '¿En que materia necesitas ayuda?',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: Colors.white,
                                                  fontSize: 12.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                      FlutterFlowDropDown<String>(
                                        controller: _model
                                                .materiaFieldValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          'Álgebra Lineal',
                                          'Introducción a la Física',
                                          'Cálculo 1',
                                          ' Informática 1',
                                          'Ingeniería de Software 1'
                                        ],
                                        onChanged: (val) => setState(() =>
                                            _model.materiaFieldValue = val),
                                        width: 300.0,
                                        height: 35.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                            ),
                                        hintText: 'Selecciona la Materia',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        fillColor: Color(0xFF04344D),
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context).info,
                                        borderWidth: 1.0,
                                        borderRadius: 20.0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 4.0, 16.0, 4.0),
                                        hidesUnderline: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    40.0, 0.0, 40.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 70.0,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.00, 0.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Marca tus días disponibles ',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: Colors.white,
                                                  fontSize: 12.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .diasFieldValueController ??=
                                              FormFieldController<String>(null),
                                          options: [
                                            'Lunes',
                                            'Martes',
                                            'Miércoles',
                                            'Jueves',
                                            'Viernes',
                                            'Sábado'
                                          ],
                                          onChanged: null,
                                          width: 300.0,
                                          height: 35.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                  ),
                                          hintText: 'Selecciona los días',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          fillColor: Color(0xFF04344D),
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context).info,
                                          borderWidth: 1.0,
                                          borderRadius: 20.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 16.0, 4.0),
                                          hidesUnderline: true,
                                          isSearchable: false,
                                          isMultiSelect: true,
                                          onChangedForMultiSelect: (val) =>
                                              setState(() =>
                                                  _model.diasFieldValue = val),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    40.0, 0.0, 40.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 70.0,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.00, 0.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Marca tus turnos disponibles',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: Colors.white,
                                                  fontSize: 12.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                      FlutterFlowDropDown<String>(
                                        controller: _model
                                                .turnoFieldValueController ??=
                                            FormFieldController<String>(null),
                                        options: ['Mañana', 'Tarde', 'Noche'],
                                        onChanged: (val) => setState(
                                            () => _model.turnoFieldValue = val),
                                        width: 300.0,
                                        height: 35.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                            ),
                                        hintText: 'Selecciona el turno',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        fillColor: Color(0xFF04344D),
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context).info,
                                        borderWidth: 1.0,
                                        borderRadius: 20.0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 4.0, 16.0, 4.0),
                                        hidesUnderline: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 80.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    if (_model.materiaFieldValue == null ||
                                        _model.materiaFieldValue == '') {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Atencion'),
                                            content:
                                                Text('Debe elegir una materia'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    } else if (_model.diasFieldValue?.length ==
                                        null) {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Atencion'),
                                            content:
                                                Text('Debe elegir los dias'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    } else if (_model.turnoFieldValue == null ||
                                        _model.turnoFieldValue == '') {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Atencion'),
                                            content:
                                                Text('Debe elegir el turno'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    } else {
                                      // tutores misma materia y dias
                                      _model.posiblesTut =
                                          await queryTutoresRecordOnce(
                                        queryBuilder: (tutoresRecord) =>
                                            tutoresRecord
                                                .where(
                                                  'materia',
                                                  isEqualTo:
                                                      _model.materiaFieldValue,
                                                )
                                                .whereArrayContainsAny('dias',
                                                    _model.diasFieldValue)
                                                .where(
                                                  'turno',
                                                  isEqualTo:
                                                      _model.turnoFieldValue,
                                                )
                                                .where(
                                                  'campus',
                                                  isEqualTo: valueOrDefault(
                                                      currentUserDocument
                                                          ?.campus,
                                                      ''),
                                                )
                                                .orderBy('user'),
                                      );
                                      setState(() {
                                        _model.cantTutores =
                                            _model.posiblesTut!.length;
                                      });
                                      if (_model.posiblesTut!.length > 0) {
                                        // Se crea solicitud alumno

                                        var solicitudXalumnoRecordReference =
                                            SolicitudXalumnoRecord.collection
                                                .doc();
                                        await solicitudXalumnoRecordReference
                                            .set({
                                          ...createSolicitudXalumnoRecordData(
                                            materia: _model.materiaFieldValue,
                                            estado: 'Activa',
                                            user: currentUserReference,
                                            turno: _model.turnoFieldValue,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'Dias': _model.diasFieldValue,
                                              'posibles_tutores': _model
                                                  .posiblesTut
                                                  ?.map((e) => e.reference)
                                                  .toList(),
                                            },
                                          ),
                                        });
                                        _model.soliAluRef =
                                            SolicitudXalumnoRecord
                                                .getDocumentFromData({
                                          ...createSolicitudXalumnoRecordData(
                                            materia: _model.materiaFieldValue,
                                            estado: 'Activa',
                                            user: currentUserReference,
                                            turno: _model.turnoFieldValue,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'Dias': _model.diasFieldValue,
                                              'posibles_tutores': _model
                                                  .posiblesTut
                                                  ?.map((e) => e.reference)
                                                  .toList(),
                                            },
                                          ),
                                        }, solicitudXalumnoRecordReference);
                                        while (
                                            _model.index < _model.cantTutores) {
                                          await NotificacionRecord.collection
                                              .doc()
                                              .set({
                                            ...createNotificacionRecordData(
                                              user: _model
                                                  .posiblesTut?[_model.index]
                                                  ?.user,
                                              soliAlu:
                                                  _model.soliAluRef?.reference,
                                              alumno: currentUserReference,
                                              mensaje:
                                                  'Tienes una propuesta de alumno',
                                              tipo: 'PosibleAlu',
                                              tutorTutor: _model
                                                  .posiblesTut?[_model.index]
                                                  ?.reference,
                                            ),
                                            ...mapToFirestore(
                                              {
                                                'fecha': FieldValue
                                                    .serverTimestamp(),
                                              },
                                            ),
                                          });
                                          // Se incrementa index
                                          _model.index = _model.index + 1;
                                        }
                                        // Se notifica que se creo la solicitud
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title:
                                                  Text('Enviado Exitosamente'),
                                              content: Text(
                                                  'Tu solicitud fue enviada exitosamente'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                        // Se va a home

                                        context.pushNamed('Home');
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text(
                                                  'No se pudo crear la solicitud'),
                                              content: Text(
                                                  'No se encontraron tutores disponibles que coincidan con lo solicitado. Vuelve a intentar mas tarde'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );

                                        context.pushNamed('Home');
                                      }
                                    }

                                    setState(() {});
                                  },
                                  text: 'Enviar Solicitud',
                                  options: FFButtonOptions(
                                    width: 250.0,
                                    height: 50.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0xFF0076AB),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                        ),
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

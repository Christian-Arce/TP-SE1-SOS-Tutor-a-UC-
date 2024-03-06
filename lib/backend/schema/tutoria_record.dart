import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TutoriaRecord extends FirestoreRecord {
  TutoriaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "tutor" field.
  DocumentReference? _tutor;
  DocumentReference? get tutor => _tutor;
  bool hasTutor() => _tutor != null;

  // "alumno" field.
  DocumentReference? _alumno;
  DocumentReference? get alumno => _alumno;
  bool hasAlumno() => _alumno != null;

  // "materia" field.
  String? _materia;
  String get materia => _materia ?? '';
  bool hasMateria() => _materia != null;

  // "fecha_inicio" field.
  DateTime? _fechaInicio;
  DateTime? get fechaInicio => _fechaInicio;
  bool hasFechaInicio() => _fechaInicio != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "calificacion_alu" field.
  int? _calificacionAlu;
  int get calificacionAlu => _calificacionAlu ?? 0;
  bool hasCalificacionAlu() => _calificacionAlu != null;

  // "calificacion_tutor" field.
  int? _calificacionTutor;
  int get calificacionTutor => _calificacionTutor ?? 0;
  bool hasCalificacionTutor() => _calificacionTutor != null;

  void _initializeFields() {
    _tutor = snapshotData['tutor'] as DocumentReference?;
    _alumno = snapshotData['alumno'] as DocumentReference?;
    _materia = snapshotData['materia'] as String?;
    _fechaInicio = snapshotData['fecha_inicio'] as DateTime?;
    _estado = snapshotData['estado'] as String?;
    _calificacionAlu = castToType<int>(snapshotData['calificacion_alu']);
    _calificacionTutor = castToType<int>(snapshotData['calificacion_tutor']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tutoria');

  static Stream<TutoriaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TutoriaRecord.fromSnapshot(s));

  static Future<TutoriaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TutoriaRecord.fromSnapshot(s));

  static TutoriaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TutoriaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TutoriaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TutoriaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TutoriaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TutoriaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTutoriaRecordData({
  DocumentReference? tutor,
  DocumentReference? alumno,
  String? materia,
  DateTime? fechaInicio,
  String? estado,
  int? calificacionAlu,
  int? calificacionTutor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tutor': tutor,
      'alumno': alumno,
      'materia': materia,
      'fecha_inicio': fechaInicio,
      'estado': estado,
      'calificacion_alu': calificacionAlu,
      'calificacion_tutor': calificacionTutor,
    }.withoutNulls,
  );

  return firestoreData;
}

class TutoriaRecordDocumentEquality implements Equality<TutoriaRecord> {
  const TutoriaRecordDocumentEquality();

  @override
  bool equals(TutoriaRecord? e1, TutoriaRecord? e2) {
    return e1?.tutor == e2?.tutor &&
        e1?.alumno == e2?.alumno &&
        e1?.materia == e2?.materia &&
        e1?.fechaInicio == e2?.fechaInicio &&
        e1?.estado == e2?.estado &&
        e1?.calificacionAlu == e2?.calificacionAlu &&
        e1?.calificacionTutor == e2?.calificacionTutor;
  }

  @override
  int hash(TutoriaRecord? e) => const ListEquality().hash([
        e?.tutor,
        e?.alumno,
        e?.materia,
        e?.fechaInicio,
        e?.estado,
        e?.calificacionAlu,
        e?.calificacionTutor
      ]);

  @override
  bool isValidKey(Object? o) => o is TutoriaRecord;
}

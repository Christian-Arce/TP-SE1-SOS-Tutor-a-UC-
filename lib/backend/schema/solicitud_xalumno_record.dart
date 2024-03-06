import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SolicitudXalumnoRecord extends FirestoreRecord {
  SolicitudXalumnoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Materia" field.
  String? _materia;
  String get materia => _materia ?? '';
  bool hasMateria() => _materia != null;

  // "Dias" field.
  List<String>? _dias;
  List<String> get dias => _dias ?? const [];
  bool hasDias() => _dias != null;

  // "Estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "posibles_tutores" field.
  List<DocumentReference>? _posiblesTutores;
  List<DocumentReference> get posiblesTutores => _posiblesTutores ?? const [];
  bool hasPosiblesTutores() => _posiblesTutores != null;

  // "turno" field.
  String? _turno;
  String get turno => _turno ?? '';
  bool hasTurno() => _turno != null;

  void _initializeFields() {
    _materia = snapshotData['Materia'] as String?;
    _dias = getDataList(snapshotData['Dias']);
    _estado = snapshotData['Estado'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _posiblesTutores = getDataList(snapshotData['posibles_tutores']);
    _turno = snapshotData['turno'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('solicitudXalumno');

  static Stream<SolicitudXalumnoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SolicitudXalumnoRecord.fromSnapshot(s));

  static Future<SolicitudXalumnoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SolicitudXalumnoRecord.fromSnapshot(s));

  static SolicitudXalumnoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SolicitudXalumnoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SolicitudXalumnoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SolicitudXalumnoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SolicitudXalumnoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SolicitudXalumnoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSolicitudXalumnoRecordData({
  String? materia,
  String? estado,
  DocumentReference? user,
  DateTime? createdTime,
  String? turno,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Materia': materia,
      'Estado': estado,
      'user': user,
      'created_time': createdTime,
      'turno': turno,
    }.withoutNulls,
  );

  return firestoreData;
}

class SolicitudXalumnoRecordDocumentEquality
    implements Equality<SolicitudXalumnoRecord> {
  const SolicitudXalumnoRecordDocumentEquality();

  @override
  bool equals(SolicitudXalumnoRecord? e1, SolicitudXalumnoRecord? e2) {
    const listEquality = ListEquality();
    return e1?.materia == e2?.materia &&
        listEquality.equals(e1?.dias, e2?.dias) &&
        e1?.estado == e2?.estado &&
        e1?.user == e2?.user &&
        e1?.createdTime == e2?.createdTime &&
        listEquality.equals(e1?.posiblesTutores, e2?.posiblesTutores) &&
        e1?.turno == e2?.turno;
  }

  @override
  int hash(SolicitudXalumnoRecord? e) => const ListEquality().hash([
        e?.materia,
        e?.dias,
        e?.estado,
        e?.user,
        e?.createdTime,
        e?.posiblesTutores,
        e?.turno
      ]);

  @override
  bool isValidKey(Object? o) => o is SolicitudXalumnoRecord;
}

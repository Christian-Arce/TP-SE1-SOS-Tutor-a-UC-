import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SolicitudXtutorRecord extends FirestoreRecord {
  SolicitudXtutorRecord._(
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

  // "nombre_alu" field.
  String? _nombreAlu;
  String get nombreAlu => _nombreAlu ?? '';
  bool hasNombreAlu() => _nombreAlu != null;

  // "turno" field.
  String? _turno;
  String get turno => _turno ?? '';
  bool hasTurno() => _turno != null;

  // "campus" field.
  String? _campus;
  String get campus => _campus ?? '';
  bool hasCampus() => _campus != null;

  // "pdf" field.
  String? _pdf;
  String get pdf => _pdf ?? '';
  bool hasPdf() => _pdf != null;

  void _initializeFields() {
    _materia = snapshotData['Materia'] as String?;
    _dias = getDataList(snapshotData['Dias']);
    _estado = snapshotData['Estado'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _nombreAlu = snapshotData['nombre_alu'] as String?;
    _turno = snapshotData['turno'] as String?;
    _campus = snapshotData['campus'] as String?;
    _pdf = snapshotData['pdf'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('solicitudXtutor');

  static Stream<SolicitudXtutorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SolicitudXtutorRecord.fromSnapshot(s));

  static Future<SolicitudXtutorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SolicitudXtutorRecord.fromSnapshot(s));

  static SolicitudXtutorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SolicitudXtutorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SolicitudXtutorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SolicitudXtutorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SolicitudXtutorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SolicitudXtutorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSolicitudXtutorRecordData({
  String? materia,
  String? estado,
  DocumentReference? user,
  DateTime? createdTime,
  String? nombreAlu,
  String? turno,
  String? campus,
  String? pdf,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Materia': materia,
      'Estado': estado,
      'user': user,
      'created_time': createdTime,
      'nombre_alu': nombreAlu,
      'turno': turno,
      'campus': campus,
      'pdf': pdf,
    }.withoutNulls,
  );

  return firestoreData;
}

class SolicitudXtutorRecordDocumentEquality
    implements Equality<SolicitudXtutorRecord> {
  const SolicitudXtutorRecordDocumentEquality();

  @override
  bool equals(SolicitudXtutorRecord? e1, SolicitudXtutorRecord? e2) {
    const listEquality = ListEquality();
    return e1?.materia == e2?.materia &&
        listEquality.equals(e1?.dias, e2?.dias) &&
        e1?.estado == e2?.estado &&
        e1?.user == e2?.user &&
        e1?.createdTime == e2?.createdTime &&
        e1?.nombreAlu == e2?.nombreAlu &&
        e1?.turno == e2?.turno &&
        e1?.campus == e2?.campus &&
        e1?.pdf == e2?.pdf;
  }

  @override
  int hash(SolicitudXtutorRecord? e) => const ListEquality().hash([
        e?.materia,
        e?.dias,
        e?.estado,
        e?.user,
        e?.createdTime,
        e?.nombreAlu,
        e?.turno,
        e?.campus,
        e?.pdf
      ]);

  @override
  bool isValidKey(Object? o) => o is SolicitudXtutorRecord;
}

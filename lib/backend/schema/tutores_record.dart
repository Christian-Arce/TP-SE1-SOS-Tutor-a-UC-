import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TutoresRecord extends FirestoreRecord {
  TutoresRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "materia" field.
  String? _materia;
  String get materia => _materia ?? '';
  bool hasMateria() => _materia != null;

  // "dias" field.
  List<String>? _dias;
  List<String> get dias => _dias ?? const [];
  bool hasDias() => _dias != null;

  // "turno" field.
  String? _turno;
  String get turno => _turno ?? '';
  bool hasTurno() => _turno != null;

  // "campus" field.
  String? _campus;
  String get campus => _campus ?? '';
  bool hasCampus() => _campus != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _materia = snapshotData['materia'] as String?;
    _dias = getDataList(snapshotData['dias']);
    _turno = snapshotData['turno'] as String?;
    _campus = snapshotData['campus'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tutores');

  static Stream<TutoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TutoresRecord.fromSnapshot(s));

  static Future<TutoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TutoresRecord.fromSnapshot(s));

  static TutoresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TutoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TutoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TutoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TutoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TutoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTutoresRecordData({
  DocumentReference? user,
  String? materia,
  String? turno,
  String? campus,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'materia': materia,
      'turno': turno,
      'campus': campus,
    }.withoutNulls,
  );

  return firestoreData;
}

class TutoresRecordDocumentEquality implements Equality<TutoresRecord> {
  const TutoresRecordDocumentEquality();

  @override
  bool equals(TutoresRecord? e1, TutoresRecord? e2) {
    const listEquality = ListEquality();
    return e1?.user == e2?.user &&
        e1?.materia == e2?.materia &&
        listEquality.equals(e1?.dias, e2?.dias) &&
        e1?.turno == e2?.turno &&
        e1?.campus == e2?.campus;
  }

  @override
  int hash(TutoresRecord? e) => const ListEquality()
      .hash([e?.user, e?.materia, e?.dias, e?.turno, e?.campus]);

  @override
  bool isValidKey(Object? o) => o is TutoresRecord;
}

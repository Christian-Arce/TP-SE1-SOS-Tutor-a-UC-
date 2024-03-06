import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificacionRecord extends FirestoreRecord {
  NotificacionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "soli_tutor" field.
  DocumentReference? _soliTutor;
  DocumentReference? get soliTutor => _soliTutor;
  bool hasSoliTutor() => _soliTutor != null;

  // "soli_alu" field.
  DocumentReference? _soliAlu;
  DocumentReference? get soliAlu => _soliAlu;
  bool hasSoliAlu() => _soliAlu != null;

  // "mensaje" field.
  String? _mensaje;
  String get mensaje => _mensaje ?? '';
  bool hasMensaje() => _mensaje != null;

  // "tutor" field.
  DocumentReference? _tutor;
  DocumentReference? get tutor => _tutor;
  bool hasTutor() => _tutor != null;

  // "posibles_tutores" field.
  List<DocumentReference>? _posiblesTutores;
  List<DocumentReference> get posiblesTutores => _posiblesTutores ?? const [];
  bool hasPosiblesTutores() => _posiblesTutores != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "alumno" field.
  DocumentReference? _alumno;
  DocumentReference? get alumno => _alumno;
  bool hasAlumno() => _alumno != null;

  // "tutor_tutor" field.
  DocumentReference? _tutorTutor;
  DocumentReference? get tutorTutor => _tutorTutor;
  bool hasTutorTutor() => _tutorTutor != null;

  // "tutoria" field.
  DocumentReference? _tutoria;
  DocumentReference? get tutoria => _tutoria;
  bool hasTutoria() => _tutoria != null;

  // "visto" field.
  bool? _visto;
  bool get visto => _visto ?? false;
  bool hasVisto() => _visto != null;

  void _initializeFields() {
    _fecha = snapshotData['fecha'] as DateTime?;
    _user = snapshotData['user'] as DocumentReference?;
    _soliTutor = snapshotData['soli_tutor'] as DocumentReference?;
    _soliAlu = snapshotData['soli_alu'] as DocumentReference?;
    _mensaje = snapshotData['mensaje'] as String?;
    _tutor = snapshotData['tutor'] as DocumentReference?;
    _posiblesTutores = getDataList(snapshotData['posibles_tutores']);
    _tipo = snapshotData['tipo'] as String?;
    _alumno = snapshotData['alumno'] as DocumentReference?;
    _tutorTutor = snapshotData['tutor_tutor'] as DocumentReference?;
    _tutoria = snapshotData['tutoria'] as DocumentReference?;
    _visto = snapshotData['visto'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notificacion');

  static Stream<NotificacionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificacionRecord.fromSnapshot(s));

  static Future<NotificacionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificacionRecord.fromSnapshot(s));

  static NotificacionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificacionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificacionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificacionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificacionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificacionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificacionRecordData({
  DateTime? fecha,
  DocumentReference? user,
  DocumentReference? soliTutor,
  DocumentReference? soliAlu,
  String? mensaje,
  DocumentReference? tutor,
  String? tipo,
  DocumentReference? alumno,
  DocumentReference? tutorTutor,
  DocumentReference? tutoria,
  bool? visto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fecha': fecha,
      'user': user,
      'soli_tutor': soliTutor,
      'soli_alu': soliAlu,
      'mensaje': mensaje,
      'tutor': tutor,
      'tipo': tipo,
      'alumno': alumno,
      'tutor_tutor': tutorTutor,
      'tutoria': tutoria,
      'visto': visto,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificacionRecordDocumentEquality
    implements Equality<NotificacionRecord> {
  const NotificacionRecordDocumentEquality();

  @override
  bool equals(NotificacionRecord? e1, NotificacionRecord? e2) {
    const listEquality = ListEquality();
    return e1?.fecha == e2?.fecha &&
        e1?.user == e2?.user &&
        e1?.soliTutor == e2?.soliTutor &&
        e1?.soliAlu == e2?.soliAlu &&
        e1?.mensaje == e2?.mensaje &&
        e1?.tutor == e2?.tutor &&
        listEquality.equals(e1?.posiblesTutores, e2?.posiblesTutores) &&
        e1?.tipo == e2?.tipo &&
        e1?.alumno == e2?.alumno &&
        e1?.tutorTutor == e2?.tutorTutor &&
        e1?.tutoria == e2?.tutoria &&
        e1?.visto == e2?.visto;
  }

  @override
  int hash(NotificacionRecord? e) => const ListEquality().hash([
        e?.fecha,
        e?.user,
        e?.soliTutor,
        e?.soliAlu,
        e?.mensaje,
        e?.tutor,
        e?.posiblesTutores,
        e?.tipo,
        e?.alumno,
        e?.tutorTutor,
        e?.tutoria,
        e?.visto
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificacionRecord;
}

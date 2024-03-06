import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "carrera" field.
  String? _carrera;
  String get carrera => _carrera ?? '';
  bool hasCarrera() => _carrera != null;

  // "campus" field.
  String? _campus;
  String get campus => _campus ?? '';
  bool hasCampus() => _campus != null;

  // "ci" field.
  String? _ci;
  String get ci => _ci ?? '';
  bool hasCi() => _ci != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "group" field.
  String? _group;
  String get group => _group ?? '';
  bool hasGroup() => _group != null;

  // "notificaciones" field.
  List<DocumentReference>? _notificaciones;
  List<DocumentReference> get notificaciones => _notificaciones ?? const [];
  bool hasNotificaciones() => _notificaciones != null;

  // "cant_calificaciones" field.
  int? _cantCalificaciones;
  int get cantCalificaciones => _cantCalificaciones ?? 0;
  bool hasCantCalificaciones() => _cantCalificaciones != null;

  // "calificacion" field.
  double? _calificacion;
  double get calificacion => _calificacion ?? 0.0;
  bool hasCalificacion() => _calificacion != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _carrera = snapshotData['carrera'] as String?;
    _campus = snapshotData['campus'] as String?;
    _ci = snapshotData['ci'] as String?;
    _nombre = snapshotData['nombre'] as String?;
    _password = snapshotData['password'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _group = snapshotData['group'] as String?;
    _notificaciones = getDataList(snapshotData['notificaciones']);
    _cantCalificaciones = castToType<int>(snapshotData['cant_calificaciones']);
    _calificacion = castToType<double>(snapshotData['calificacion']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? carrera,
  String? campus,
  String? ci,
  String? nombre,
  String? password,
  String? displayName,
  String? group,
  int? cantCalificaciones,
  double? calificacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'carrera': carrera,
      'campus': campus,
      'ci': ci,
      'nombre': nombre,
      'password': password,
      'display_name': displayName,
      'group': group,
      'cant_calificaciones': cantCalificaciones,
      'calificacion': calificacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.carrera == e2?.carrera &&
        e1?.campus == e2?.campus &&
        e1?.ci == e2?.ci &&
        e1?.nombre == e2?.nombre &&
        e1?.password == e2?.password &&
        e1?.displayName == e2?.displayName &&
        e1?.group == e2?.group &&
        listEquality.equals(e1?.notificaciones, e2?.notificaciones) &&
        e1?.cantCalificaciones == e2?.cantCalificaciones &&
        e1?.calificacion == e2?.calificacion;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.carrera,
        e?.campus,
        e?.ci,
        e?.nombre,
        e?.password,
        e?.displayName,
        e?.group,
        e?.notificaciones,
        e?.cantCalificaciones,
        e?.calificacion
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}

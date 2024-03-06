import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GrupoRecord extends FirestoreRecord {
  GrupoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "members" field.
  List<DocumentReference>? _members;
  List<DocumentReference> get members => _members ?? const [];
  bool hasMembers() => _members != null;

  // "group_id" field.
  String? _groupId;
  String get groupId => _groupId ?? '';
  bool hasGroupId() => _groupId != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _members = getDataList(snapshotData['members']);
    _groupId = snapshotData['group_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('grupo');

  static Stream<GrupoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GrupoRecord.fromSnapshot(s));

  static Future<GrupoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GrupoRecord.fromSnapshot(s));

  static GrupoRecord fromSnapshot(DocumentSnapshot snapshot) => GrupoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GrupoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GrupoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GrupoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GrupoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGrupoRecordData({
  String? name,
  String? groupId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'group_id': groupId,
    }.withoutNulls,
  );

  return firestoreData;
}

class GrupoRecordDocumentEquality implements Equality<GrupoRecord> {
  const GrupoRecordDocumentEquality();

  @override
  bool equals(GrupoRecord? e1, GrupoRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        listEquality.equals(e1?.members, e2?.members) &&
        e1?.groupId == e2?.groupId;
  }

  @override
  int hash(GrupoRecord? e) =>
      const ListEquality().hash([e?.name, e?.members, e?.groupId]);

  @override
  bool isValidKey(Object? o) => o is GrupoRecord;
}

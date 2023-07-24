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

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "idNumber" field.
  String? _idNumber;
  String get idNumber => _idNumber ?? '';
  bool hasIdNumber() => _idNumber != null;

  // "program" field.
  String? _program;
  String get program => _program ?? '';
  bool hasProgram() => _program != null;

  // "yearLevel" field.
  int? _yearLevel;
  int get yearLevel => _yearLevel ?? 0;
  bool hasYearLevel() => _yearLevel != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "userFacebook" field.
  String? _userFacebook;
  String get userFacebook => _userFacebook ?? '';
  bool hasUserFacebook() => _userFacebook != null;

  // "userBirthday" field.
  String? _userBirthday;
  String get userBirthday => _userBirthday ?? '';
  bool hasUserBirthday() => _userBirthday != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _password = snapshotData['password'] as String?;
    _uid = snapshotData['uid'] as String?;
    _idNumber = snapshotData['idNumber'] as String?;
    _program = snapshotData['program'] as String?;
    _yearLevel = castToType<int>(snapshotData['yearLevel']);
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _userFacebook = snapshotData['userFacebook'] as String?;
    _userBirthday = snapshotData['userBirthday'] as String?;
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
  String? password,
  String? uid,
  String? idNumber,
  String? program,
  int? yearLevel,
  String? displayName,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
  String? userFacebook,
  String? userBirthday,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'password': password,
      'uid': uid,
      'idNumber': idNumber,
      'program': program,
      'yearLevel': yearLevel,
      'display_name': displayName,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'userFacebook': userFacebook,
      'userBirthday': userBirthday,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.password == e2?.password &&
        e1?.uid == e2?.uid &&
        e1?.idNumber == e2?.idNumber &&
        e1?.program == e2?.program &&
        e1?.yearLevel == e2?.yearLevel &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.userFacebook == e2?.userFacebook &&
        e1?.userBirthday == e2?.userBirthday;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.password,
        e?.uid,
        e?.idNumber,
        e?.program,
        e?.yearLevel,
        e?.displayName,
        e?.photoUrl,
        e?.createdTime,
        e?.phoneNumber,
        e?.userFacebook,
        e?.userBirthday
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}

import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'donors_record.g.dart';

abstract class DonorsRecord
    implements Built<DonorsRecord, DonorsRecordBuilder> {
  static Serializer<DonorsRecord> get serializer => _$donorsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'first_name')
  String get firstName;

  @nullable
  @BuiltValueField(wireName: 'middle_name')
  String get middleName;

  @nullable
  @BuiltValueField(wireName: 'last_name')
  String get lastName;

  @nullable
  @BuiltValueField(wireName: 'date_of_birth')
  String get dateOfBirth;

  @nullable
  @BuiltValueField(wireName: 'address_line_1')
  String get addressLine1;

  @nullable
  @BuiltValueField(wireName: 'address_line_2')
  String get addressLine2;

  @nullable
  String get city;

  @nullable
  String get province;

  @nullable
  @BuiltValueField(wireName: 'zip_code')
  String get zipCode;

  @nullable
  @BuiltValueField(wireName: 'donor_email')
  String get donorEmail;

  @nullable
  @BuiltValueField(wireName: 'donor_phone_number')
  String get donorPhoneNumber;

  @nullable
  String get gender;

  @nullable
  @BuiltValueField(wireName: 'citizenship_number')
  String get citizenshipNumber;

  @nullable
  @BuiltValueField(wireName: 'father_name')
  String get fatherName;

  @nullable
  @BuiltValueField(wireName: 'mother_name')
  String get motherName;

  @nullable
  @BuiltValueField(wireName: 'grandfather_name')
  String get grandfatherName;

  @nullable
  @BuiltValueField(wireName: 'medical_history')
  String get medicalHistory;

  @nullable
  String get allergy;

  @nullable
  String get medication;

  @nullable
  @BuiltValueField(wireName: 'medication_taken')
  String get medicationTaken;

  @nullable
  String get choices;

  @nullable
  @BuiltValueField(wireName: 'blood_group')
  String get bloodGroup;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DonorsRecordBuilder builder) => builder
    ..firstName = ''
    ..middleName = ''
    ..lastName = ''
    ..dateOfBirth = ''
    ..addressLine1 = ''
    ..addressLine2 = ''
    ..city = ''
    ..province = ''
    ..zipCode = ''
    ..donorEmail = ''
    ..donorPhoneNumber = ''
    ..gender = ''
    ..citizenshipNumber = ''
    ..fatherName = ''
    ..motherName = ''
    ..grandfatherName = ''
    ..medicalHistory = ''
    ..allergy = ''
    ..medication = ''
    ..medicationTaken = ''
    ..choices = ''
    ..bloodGroup = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('donors');

  static Stream<DonorsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DonorsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  DonorsRecord._();
  factory DonorsRecord([void Function(DonorsRecordBuilder) updates]) =
      _$DonorsRecord;

  static DonorsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDonorsRecordData({
  String firstName,
  String middleName,
  String lastName,
  String dateOfBirth,
  String addressLine1,
  String addressLine2,
  String city,
  String province,
  String zipCode,
  String donorEmail,
  String donorPhoneNumber,
  String gender,
  String citizenshipNumber,
  String fatherName,
  String motherName,
  String grandfatherName,
  String medicalHistory,
  String allergy,
  String medication,
  String medicationTaken,
  String choices,
  String bloodGroup,
}) =>
    serializers.toFirestore(
        DonorsRecord.serializer,
        DonorsRecord((d) => d
          ..firstName = firstName
          ..middleName = middleName
          ..lastName = lastName
          ..dateOfBirth = dateOfBirth
          ..addressLine1 = addressLine1
          ..addressLine2 = addressLine2
          ..city = city
          ..province = province
          ..zipCode = zipCode
          ..donorEmail = donorEmail
          ..donorPhoneNumber = donorPhoneNumber
          ..gender = gender
          ..citizenshipNumber = citizenshipNumber
          ..fatherName = fatherName
          ..motherName = motherName
          ..grandfatherName = grandfatherName
          ..medicalHistory = medicalHistory
          ..allergy = allergy
          ..medication = medication
          ..medicationTaken = medicationTaken
          ..choices = choices
          ..bloodGroup = bloodGroup));

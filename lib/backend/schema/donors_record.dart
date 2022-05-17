import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'donors_record.g.dart';

abstract class DonorsRecord
    implements Built<DonorsRecord, DonorsRecordBuilder> {
  static Serializer<DonorsRecord> get serializer => _$donorsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DonorsRecordBuilder builder) => builder;

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

Map<String, dynamic> createDonorsRecordData() =>
    serializers.toFirestore(DonorsRecord.serializer, DonorsRecord((d) => d));

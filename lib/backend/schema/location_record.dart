import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'location_record.g.dart';

abstract class LocationRecord
    implements Built<LocationRecord, LocationRecordBuilder> {
  static Serializer<LocationRecord> get serializer =>
      _$locationRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'organization_name')
  String get organizationName;

  @nullable
  LatLng get location;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(LocationRecordBuilder builder) =>
      builder..organizationName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('location');

  static Stream<LocationRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<LocationRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  LocationRecord._();
  factory LocationRecord([void Function(LocationRecordBuilder) updates]) =
      _$LocationRecord;

  static LocationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createLocationRecordData({
  String organizationName,
  LatLng location,
}) =>
    serializers.toFirestore(
        LocationRecord.serializer,
        LocationRecord((l) => l
          ..organizationName = organizationName
          ..location = location));

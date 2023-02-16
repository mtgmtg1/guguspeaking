import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'four_record.g.dart';

abstract class FourRecord implements Built<FourRecord, FourRecordBuilder> {
  static Serializer<FourRecord> get serializer => _$fourRecordSerializer;

  BuiltList<String>? get one;

  BuiltList<String>? get two;

  BuiltList<String>? get three;

  BuiltList<String>? get four;

  BuiltList<String>? get five;

  BuiltList<String>? get six;

  BuiltList<String>? get seven;

  BuiltList<String>? get eight;

  BuiltList<String>? get nine;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FourRecordBuilder builder) => builder
    ..one = ListBuilder()
    ..two = ListBuilder()
    ..three = ListBuilder()
    ..four = ListBuilder()
    ..five = ListBuilder()
    ..six = ListBuilder()
    ..seven = ListBuilder()
    ..eight = ListBuilder()
    ..nine = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('four');

  static Stream<FourRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FourRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FourRecord._();
  factory FourRecord([void Function(FourRecordBuilder) updates]) = _$FourRecord;

  static FourRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFourRecordData() {
  final firestoreData = serializers.toFirestore(
    FourRecord.serializer,
    FourRecord(
      (f) => f
        ..one = null
        ..two = null
        ..three = null
        ..four = null
        ..five = null
        ..six = null
        ..seven = null
        ..eight = null
        ..nine = null,
    ),
  );

  return firestoreData;
}

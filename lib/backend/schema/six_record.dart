import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'six_record.g.dart';

abstract class SixRecord implements Built<SixRecord, SixRecordBuilder> {
  static Serializer<SixRecord> get serializer => _$sixRecordSerializer;

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

  static void _initializeBuilder(SixRecordBuilder builder) => builder
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
      FirebaseFirestore.instance.collection('six');

  static Stream<SixRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SixRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SixRecord._();
  factory SixRecord([void Function(SixRecordBuilder) updates]) = _$SixRecord;

  static SixRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSixRecordData() {
  final firestoreData = serializers.toFirestore(
    SixRecord.serializer,
    SixRecord(
      (s) => s
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

import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'five_record.g.dart';

abstract class FiveRecord implements Built<FiveRecord, FiveRecordBuilder> {
  static Serializer<FiveRecord> get serializer => _$fiveRecordSerializer;

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

  static void _initializeBuilder(FiveRecordBuilder builder) => builder
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
      FirebaseFirestore.instance.collection('five');

  static Stream<FiveRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FiveRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FiveRecord._();
  factory FiveRecord([void Function(FiveRecordBuilder) updates]) = _$FiveRecord;

  static FiveRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFiveRecordData() {
  final firestoreData = serializers.toFirestore(
    FiveRecord.serializer,
    FiveRecord(
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

import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'nine_record.g.dart';

abstract class NineRecord implements Built<NineRecord, NineRecordBuilder> {
  static Serializer<NineRecord> get serializer => _$nineRecordSerializer;

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

  static void _initializeBuilder(NineRecordBuilder builder) => builder
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
      FirebaseFirestore.instance.collection('nine');

  static Stream<NineRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NineRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NineRecord._();
  factory NineRecord([void Function(NineRecordBuilder) updates]) = _$NineRecord;

  static NineRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNineRecordData() {
  final firestoreData = serializers.toFirestore(
    NineRecord.serializer,
    NineRecord(
      (n) => n
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

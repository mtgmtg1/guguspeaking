import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'one_record.g.dart';

abstract class OneRecord implements Built<OneRecord, OneRecordBuilder> {
  static Serializer<OneRecord> get serializer => _$oneRecordSerializer;

  BuiltList<String>? get one;

  BuiltList<String>? get two;

  BuiltList<String>? get three;

  BuiltList<String>? get four;

  BuiltList<String>? get five;

  BuiltList<String>? get six;

  BuiltList<String>? get seven;

  BuiltList<String>? get eight;

  BuiltList<String>? get nine;

  String? get enaudio;

  DateTime? get create;

  String? get krtrans;

  String? get title;

  String? get entxt;

  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(OneRecordBuilder builder) => builder
    ..one = ListBuilder()
    ..two = ListBuilder()
    ..three = ListBuilder()
    ..four = ListBuilder()
    ..five = ListBuilder()
    ..six = ListBuilder()
    ..seven = ListBuilder()
    ..eight = ListBuilder()
    ..nine = ListBuilder()
    ..enaudio = ''
    ..krtrans = ''
    ..title = ''
    ..entxt = ''
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('one');

  static Stream<OneRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<OneRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  OneRecord._();
  factory OneRecord([void Function(OneRecordBuilder) updates]) = _$OneRecord;

  static OneRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createOneRecordData({
  String? enaudio,
  DateTime? create,
  String? krtrans,
  String? title,
  String? entxt,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    OneRecord.serializer,
    OneRecord(
      (o) => o
        ..one = null
        ..two = null
        ..three = null
        ..four = null
        ..five = null
        ..six = null
        ..seven = null
        ..eight = null
        ..nine = null
        ..enaudio = enaudio
        ..create = create
        ..krtrans = krtrans
        ..title = title
        ..entxt = entxt
        ..image = image,
    ),
  );

  return firestoreData;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'three_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ThreeRecord> _$threeRecordSerializer = new _$ThreeRecordSerializer();

class _$ThreeRecordSerializer implements StructuredSerializer<ThreeRecord> {
  @override
  final Iterable<Type> types = const [ThreeRecord, _$ThreeRecord];
  @override
  final String wireName = 'ThreeRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ThreeRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.one;
    if (value != null) {
      result
        ..add('one')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.two;
    if (value != null) {
      result
        ..add('two')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.three;
    if (value != null) {
      result
        ..add('three')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.four;
    if (value != null) {
      result
        ..add('four')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.five;
    if (value != null) {
      result
        ..add('five')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.six;
    if (value != null) {
      result
        ..add('six')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.seven;
    if (value != null) {
      result
        ..add('seven')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.eight;
    if (value != null) {
      result
        ..add('eight')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.nine;
    if (value != null) {
      result
        ..add('nine')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ThreeRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ThreeRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'one':
          result.one.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'two':
          result.two.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'three':
          result.three.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'four':
          result.four.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'five':
          result.five.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'six':
          result.six.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'seven':
          result.seven.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'eight':
          result.eight.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'nine':
          result.nine.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ThreeRecord extends ThreeRecord {
  @override
  final BuiltList<String>? one;
  @override
  final BuiltList<String>? two;
  @override
  final BuiltList<String>? three;
  @override
  final BuiltList<String>? four;
  @override
  final BuiltList<String>? five;
  @override
  final BuiltList<String>? six;
  @override
  final BuiltList<String>? seven;
  @override
  final BuiltList<String>? eight;
  @override
  final BuiltList<String>? nine;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ThreeRecord([void Function(ThreeRecordBuilder)? updates]) =>
      (new ThreeRecordBuilder()..update(updates))._build();

  _$ThreeRecord._(
      {this.one,
      this.two,
      this.three,
      this.four,
      this.five,
      this.six,
      this.seven,
      this.eight,
      this.nine,
      this.ffRef})
      : super._();

  @override
  ThreeRecord rebuild(void Function(ThreeRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ThreeRecordBuilder toBuilder() => new ThreeRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ThreeRecord &&
        one == other.one &&
        two == other.two &&
        three == other.three &&
        four == other.four &&
        five == other.five &&
        six == other.six &&
        seven == other.seven &&
        eight == other.eight &&
        nine == other.nine &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc($jc(0, one.hashCode), two.hashCode),
                                    three.hashCode),
                                four.hashCode),
                            five.hashCode),
                        six.hashCode),
                    seven.hashCode),
                eight.hashCode),
            nine.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ThreeRecord')
          ..add('one', one)
          ..add('two', two)
          ..add('three', three)
          ..add('four', four)
          ..add('five', five)
          ..add('six', six)
          ..add('seven', seven)
          ..add('eight', eight)
          ..add('nine', nine)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ThreeRecordBuilder implements Builder<ThreeRecord, ThreeRecordBuilder> {
  _$ThreeRecord? _$v;

  ListBuilder<String>? _one;
  ListBuilder<String> get one => _$this._one ??= new ListBuilder<String>();
  set one(ListBuilder<String>? one) => _$this._one = one;

  ListBuilder<String>? _two;
  ListBuilder<String> get two => _$this._two ??= new ListBuilder<String>();
  set two(ListBuilder<String>? two) => _$this._two = two;

  ListBuilder<String>? _three;
  ListBuilder<String> get three => _$this._three ??= new ListBuilder<String>();
  set three(ListBuilder<String>? three) => _$this._three = three;

  ListBuilder<String>? _four;
  ListBuilder<String> get four => _$this._four ??= new ListBuilder<String>();
  set four(ListBuilder<String>? four) => _$this._four = four;

  ListBuilder<String>? _five;
  ListBuilder<String> get five => _$this._five ??= new ListBuilder<String>();
  set five(ListBuilder<String>? five) => _$this._five = five;

  ListBuilder<String>? _six;
  ListBuilder<String> get six => _$this._six ??= new ListBuilder<String>();
  set six(ListBuilder<String>? six) => _$this._six = six;

  ListBuilder<String>? _seven;
  ListBuilder<String> get seven => _$this._seven ??= new ListBuilder<String>();
  set seven(ListBuilder<String>? seven) => _$this._seven = seven;

  ListBuilder<String>? _eight;
  ListBuilder<String> get eight => _$this._eight ??= new ListBuilder<String>();
  set eight(ListBuilder<String>? eight) => _$this._eight = eight;

  ListBuilder<String>? _nine;
  ListBuilder<String> get nine => _$this._nine ??= new ListBuilder<String>();
  set nine(ListBuilder<String>? nine) => _$this._nine = nine;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ThreeRecordBuilder() {
    ThreeRecord._initializeBuilder(this);
  }

  ThreeRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _one = $v.one?.toBuilder();
      _two = $v.two?.toBuilder();
      _three = $v.three?.toBuilder();
      _four = $v.four?.toBuilder();
      _five = $v.five?.toBuilder();
      _six = $v.six?.toBuilder();
      _seven = $v.seven?.toBuilder();
      _eight = $v.eight?.toBuilder();
      _nine = $v.nine?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ThreeRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ThreeRecord;
  }

  @override
  void update(void Function(ThreeRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ThreeRecord build() => _build();

  _$ThreeRecord _build() {
    _$ThreeRecord _$result;
    try {
      _$result = _$v ??
          new _$ThreeRecord._(
              one: _one?.build(),
              two: _two?.build(),
              three: _three?.build(),
              four: _four?.build(),
              five: _five?.build(),
              six: _six?.build(),
              seven: _seven?.build(),
              eight: _eight?.build(),
              nine: _nine?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'one';
        _one?.build();
        _$failedField = 'two';
        _two?.build();
        _$failedField = 'three';
        _three?.build();
        _$failedField = 'four';
        _four?.build();
        _$failedField = 'five';
        _five?.build();
        _$failedField = 'six';
        _six?.build();
        _$failedField = 'seven';
        _seven?.build();
        _$failedField = 'eight';
        _eight?.build();
        _$failedField = 'nine';
        _nine?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ThreeRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

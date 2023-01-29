// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_field, unused_element, require_trailing_commas, prefer_const_constructors, unnecessary_overrides, prefer_const_literals_to_create_immutables,  unnecessary_null_in_if_null_operators, library_prefixes, directives_ordering, no_leading_underscores_for_local_identifiers, unnecessary_brace_in_string_interps, unnecessary_type_check

part of 'memo.dart';

// **************************************************************************
// CollectionModelGenerator
// **************************************************************************

class $MemoModelDocument extends DocumentBase<MemoModel>
    with ModelRefMixin<MemoModel> {
  $MemoModelDocument(super.modelQuery);

  @override
  MemoModel fromMap(DynamicMap map) => MemoModel.fromJson(map);
  @override
  DynamicMap toMap(MemoModel value) => value.toJson();
}

class _$MemoModelCollection extends CollectionBase<$MemoModelDocument> {
  _$MemoModelCollection(super.modelQuery);

  @override
  $MemoModelDocument create([String? id]) =>
      $MemoModelDocument(modelQuery.create(id));
}

enum MemoModelCollectionKey { title, text, time }

@immutable
class _$MemoModelDocumentQuery {
  const _$MemoModelDocumentQuery();

  @useResult
  _$_MemoModelDocumentQuery call(Object _id) {
    return _$_MemoModelDocumentQuery(DocumentModelQuery("memo/$_id"));
  }
}

@immutable
class _$_MemoModelDocumentQuery extends ModelQueryBase<$MemoModelDocument> {
  const _$_MemoModelDocumentQuery(this.modelQuery);

  final DocumentModelQuery modelQuery;

  @override
  $MemoModelDocument Function(Ref ref) call() =>
      (ref) => $MemoModelDocument(modelQuery);
  @override
  String get name => modelQuery.toString();
}

@immutable
class _$MemoModelCollectionQuery {
  const _$MemoModelCollectionQuery();

  @useResult
  _$_MemoModelCollectionQuery call({
    MemoModelCollectionKey? key,
    dynamic isEqualTo,
    dynamic isNotEqualTo,
    dynamic isLessThanOrEqualTo,
    dynamic isGreaterThanOrEqualTo,
    dynamic arrayContains,
    List<dynamic>? arrayContainsAny,
    List<dynamic>? whereIn,
    List<dynamic>? whereNotIn,
    List<String>? geoHash,
    ModelQueryOrder order = ModelQueryOrder.asc,
    int? limit,
    String? orderBy,
  }) {
    return _$_MemoModelCollectionQuery(CollectionModelQuery("memo",
        key: key?.name,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        geoHash: geoHash,
        order: order,
        limit: limit,
        orderBy: orderBy));
  }
}

@immutable
class _$_MemoModelCollectionQuery
    extends ModelQueryBase<_$MemoModelCollection> {
  const _$_MemoModelCollectionQuery(this.modelQuery);

  final CollectionModelQuery modelQuery;

  @override
  _$MemoModelCollection Function(Ref ref) call() =>
      (ref) => _$MemoModelCollection(modelQuery);
  @override
  String get name => modelQuery.toString();
}

// **************************************************************************
// FormValueGenerator
// **************************************************************************

@immutable
class _$MemoModelFormQuery {
  const _$MemoModelFormQuery();

  @useResult
  _$_MemoModelFormQuery call(MemoModel value) {
    return _$_MemoModelFormQuery(value);
  }
}

@immutable
class _$_MemoModelFormQuery
    extends ControllerQueryBase<FormController<MemoModel>> {
  const _$_MemoModelFormQuery(this.value);

  final MemoModel value;

  @override
  FormController<MemoModel> Function(Ref ref) call() =>
      (ref) => FormController(value);
  @override
  String get name => value.hashCode.toString();
}

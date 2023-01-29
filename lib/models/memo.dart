// ignore: unused_import, unnecessary_import
import 'package:flutter/material.dart';
// ignore: unused_import, unnecessary_import
import 'package:masamune/masamune.dart';

// ignore: unused_import, unnecessary_import
import '/main.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'memo.m.dart';
part 'memo.g.dart';
part 'memo.freezed.dart';

/// Alias for ModelRef<MemoModel>.
///
/// When defining parameters for other Models, you can define them as follows
///
/// ```dart
/// @refParam MemoModelRef memo
/// ```
typedef MemoModelRef = ModelRef<MemoModel>?;

/// Value for model.
@freezed
@formValue
@immutable
// TODO: Set the path for the collection.
@CollectionModelPath("memo")
class MemoModel with _$MemoModel {
  const factory MemoModel({
    // TODO: Set the data schema.
    required String title,
    required String text,
    @Default(ModelTimestamp()) ModelTimestamp time,
  }) = _MemoModel;
  const MemoModel._();

  factory MemoModel.fromJson(Map<String, Object?> json) =>
      _$MemoModelFromJson(json);

  /// Query for document.
  ///
  /// ```dart
  /// appRef.model(MemoModel.document(id));      // Get the document.
  /// ref.model(MemoModel.document(id))..load(); // Load the document.
  /// ```
  static const document = _$MemoModelDocumentQuery();

  /// Query for collection.
  ///
  /// ```dart
  /// appRef.model(MemoModel.collectoin());      // Get the collection.
  /// ref.model(MemoModel.collection())..load(); // Load the collection.
  /// ```
  static const collection = _$MemoModelCollectionQuery();

  /// Query for form value.
  ///
  /// ```dart
  /// ref.page.controller(MemoModel.form());     // Get the form controller.
  /// ```
  static const form = _$MemoModelFormQuery();
}

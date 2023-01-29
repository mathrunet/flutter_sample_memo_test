// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_field, unused_element, require_trailing_commas, prefer_const_constructors, unnecessary_overrides, prefer_const_literals_to_create_immutables,  unnecessary_null_in_if_null_operators, library_prefixes, directives_ordering, unused_local_variable

part of 'memo.dart';

// **************************************************************************
// PageGenerator
// **************************************************************************

@immutable
class _$MemoPageQuery extends RouteQueryBuilder {
  const _$MemoPageQuery();

  static final _regExp = RegExp(r"^memo$");

  @useResult
  _$_MemoPageQuery call() => _$_MemoPageQuery(
        null,
      );
  @override
  RouteQuery? resolve(String? path) {
    if (path == null) {
      return null;
    }
    if (path.contains("?")) {
      final split = path.split("?");
      final match = _regExp.firstMatch(split.first.trimString("/"));
      if (match == null) {
        return null;
      }
      final query = Uri.splitQueryString(split.last);
      return _$_MemoPageQuery(
        path,
      );
    } else {
      path = path.trimQuery().trimString("/");
      final match = _regExp.firstMatch(path.trimQuery().trimString("/"));
      if (match == null) {
        return null;
      }
      return _$_MemoPageQuery(
        path,
      );
    }
  }
}

@immutable
class _$_MemoPageQuery extends RouteQuery {
  const _$_MemoPageQuery(this._path);

  final String? _path;

  @override
  String get path => _path ?? "memo";
  @override
  String get name => path;
  @override
  E? key<E>() => null;
  @override
  List<RedirectQuery> redirect() => const [];
  @override
  AppPageRoute<E> route<E>([TransitionQuery? query]) {
    return AppPageRoute<E>(
      path: path,
      transitionQuery: query,
      builder: (context) => MemoPage(),
    );
  }
}

@immutable
class _$MemoDetailPageQuery extends RouteQueryBuilder {
  const _$MemoDetailPageQuery();

  static final _regExp = RegExp(r"^memo/{view_id}$");

  @useResult
  _$_MemoDetailPageQuery call({required String viewId}) =>
      _$_MemoDetailPageQuery(null, viewId: viewId);
  @override
  RouteQuery? resolve(String? path) {
    if (path == null) {
      return null;
    }
    if (path.contains("?")) {
      final split = path.split("?");
      final match = _regExp.firstMatch(split.first.trimString("/"));
      if (match == null) {
        return null;
      }
      final query = Uri.splitQueryString(split.last);
      return _$_MemoDetailPageQuery(path,
          viewId: match.groupNames.contains("view_id")
              ? match.namedGroup("view_id") ??
                  (query.containsKey("viewId") ? query["viewId"] ?? "" : "")
              : (query.containsKey("viewId") ? query["viewId"] ?? "" : ""));
    } else {
      path = path.trimQuery().trimString("/");
      final match = _regExp.firstMatch(path.trimQuery().trimString("/"));
      if (match == null) {
        return null;
      }
      return _$_MemoDetailPageQuery(path,
          viewId: match.groupNames.contains("view_id")
              ? match.namedGroup("view_id") ?? ""
              : "");
    }
  }
}

@immutable
class _$_MemoDetailPageQuery extends RouteQuery {
  const _$_MemoDetailPageQuery(
    this._path, {
    required this.viewId,
  });

  final String viewId;

  final String? _path;

  @override
  String get path => _path ?? "memo/{view_id}";
  @override
  String get name => path;
  @override
  E? key<E>() => null;
  @override
  List<RedirectQuery> redirect() => const [];
  @override
  AppPageRoute<E> route<E>([TransitionQuery? query]) {
    return AppPageRoute<E>(
      path: path,
      transitionQuery: query,
      builder: (context) => MemoDetailPage(viewId: viewId),
    );
  }
}

@immutable
class _$MemoAddPageQuery extends RouteQueryBuilder {
  const _$MemoAddPageQuery();

  static final _regExp = RegExp(r"^memo/add$");

  @useResult
  _$_MemoAddPageQuery call() => _$_MemoAddPageQuery(
        null,
      );
  @override
  RouteQuery? resolve(String? path) {
    if (path == null) {
      return null;
    }
    if (path.contains("?")) {
      final split = path.split("?");
      final match = _regExp.firstMatch(split.first.trimString("/"));
      if (match == null) {
        return null;
      }
      final query = Uri.splitQueryString(split.last);
      return _$_MemoAddPageQuery(
        path,
      );
    } else {
      path = path.trimQuery().trimString("/");
      final match = _regExp.firstMatch(path.trimQuery().trimString("/"));
      if (match == null) {
        return null;
      }
      return _$_MemoAddPageQuery(
        path,
      );
    }
  }
}

@immutable
class _$_MemoAddPageQuery extends RouteQuery {
  const _$_MemoAddPageQuery(this._path);

  final String? _path;

  @override
  String get path => _path ?? "memo/add";
  @override
  String get name => path;
  @override
  E? key<E>() => null;
  @override
  List<RedirectQuery> redirect() => const [];
  @override
  AppPageRoute<E> route<E>([TransitionQuery? query]) {
    return AppPageRoute<E>(
      path: path,
      transitionQuery: query,
      builder: (context) => MemoAddPage(),
    );
  }
}

@immutable
class _$MemoEditPageQuery extends RouteQueryBuilder {
  const _$MemoEditPageQuery();

  static final _regExp = RegExp(r"^memo/{edit_id}/edit$");

  @useResult
  _$_MemoEditPageQuery call({required String editId}) =>
      _$_MemoEditPageQuery(null, editId: editId);
  @override
  RouteQuery? resolve(String? path) {
    if (path == null) {
      return null;
    }
    if (path.contains("?")) {
      final split = path.split("?");
      final match = _regExp.firstMatch(split.first.trimString("/"));
      if (match == null) {
        return null;
      }
      final query = Uri.splitQueryString(split.last);
      return _$_MemoEditPageQuery(path,
          editId: match.groupNames.contains("edit_id")
              ? match.namedGroup("edit_id") ??
                  (query.containsKey("editId") ? query["editId"] ?? "" : "")
              : (query.containsKey("editId") ? query["editId"] ?? "" : ""));
    } else {
      path = path.trimQuery().trimString("/");
      final match = _regExp.firstMatch(path.trimQuery().trimString("/"));
      if (match == null) {
        return null;
      }
      return _$_MemoEditPageQuery(path,
          editId: match.groupNames.contains("edit_id")
              ? match.namedGroup("edit_id") ?? ""
              : "");
    }
  }
}

@immutable
class _$_MemoEditPageQuery extends RouteQuery {
  const _$_MemoEditPageQuery(
    this._path, {
    required this.editId,
  });

  final String editId;

  final String? _path;

  @override
  String get path => _path ?? "memo/{edit_id}/edit";
  @override
  String get name => path;
  @override
  E? key<E>() => null;
  @override
  List<RedirectQuery> redirect() => const [];
  @override
  AppPageRoute<E> route<E>([TransitionQuery? query]) {
    return AppPageRoute<E>(
      path: path,
      transitionQuery: query,
      builder: (context) => MemoEditPage(editId: editId),
    );
  }
}

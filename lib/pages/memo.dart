// ignore: unused_import, unnecessary_import
import 'package:flutter/material.dart';
// ignore: unused_import, unnecessary_import
import 'package:masamune/masamune.dart';
import 'package:memotest/models/memo.dart';

// ignore: unused_import, unnecessary_import
import '/main.dart';

part 'memo.page.dart';

@immutable
// TODO: Set the path for the page.
@PagePath("memo")
class MemoPage extends PageScopedWidget {
  const MemoPage({
    super.key,
    // TODO: Set parameters for the page.
  });

  // TODO: Set parameters for the page in the form [final String xxx].

  /// Used to transition to the MemoPage screen.
  ///
  /// ```dart
  /// router.push(MemoPage.query(parameters));    // Push page to MemoPage.
  /// router.replace(MemoPage.query(parameters)); // Push page to MemoPage.
  /// ```
  @pageRouteQuery
  static const query = _$MemoPageQuery();

  /// Used to transition to the MemoDetailPage screen.
  ///
  /// ```dart
  /// router.push(MemoForm.detailQuery(parameters));    // Push page to MemoAddPage.
  /// router.replace(MemoForm.detailQuery(parameters)); // Push page to MemoAddPage.
  /// ```
  static const detailQuery = MemoDetailPage.query;

  /// Used to transition to the MemoAddPage screen.
  ///
  /// ```dart
  /// router.push(MemoForm.addQuery(parameters));    // Push page to MemoAddPage.
  /// router.replace(MemoForm.addQuery(parameters)); // Push page to MemoAddPage.
  /// ```
  static const addQuery = MemoAddPage.query;

  /// Used to transition to the MemoEditPage screen.
  ///
  /// ```dart
  /// router.push(MemoForm.editQuery(parameters));    // Push page to MemoEditPage.
  /// router.replace(MemoForm.editQuery(parameters)); // Push page to MemoEditPage.
  /// ```
  static const editQuery = MemoEditPage.query;

  @override
  Widget build(BuildContext context, PageRef ref) {
    // Describes the process of loading
    // and defining variables required for the page.
    // TODO: Implement the variable loading process.
    final col = ref.model(MemoModel.collection())..load();

    // Describes the structure of the page.
    // TODO: Implement the view.
    return Scaffold(
      appBar: AppBar(
        title: const Text("Memo"),
      ),
      body: ListBuilder(
        source: col,
        builder: (context, item, index) {
          return [
            ListTile(
              title: Text(item.value?.title ?? ""),
              onTap: () {
                router.push(MemoDetailPage.query(viewId: item.uid));
              },
            )
          ];
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            router.push(MemoAddPage.query());
          },
          child: const Icon(Icons.add)),
    );
  }
}

@immutable
// TODO: Set the path for the page.
@PagePath("memo/{view_id}")
class MemoDetailPage extends PageScopedWidget {
  const MemoDetailPage({
    super.key,
    // TODO: Set parameters for the page.
    @PageParam("view_id") required this.viewId,
  });

  /// ViewId for Detail.
  ///
  /// Detail用のViewId.
  final String viewId;

  // TODO: Set parameters for the page in the form [final String xxx].

  /// Used to transition to the MemoDetailPage screen.
  ///
  /// ```dart
  /// router.push(MemoDetailPage.query(parameters));    // Push page to MemoDetailPage.
  /// router.replace(MemoDetailPage.query(parameters)); // Push page to MemoDetailPage.
  /// ```
  @pageRouteQuery
  static const query = _$MemoDetailPageQuery();

  @override
  Widget build(BuildContext context, PageRef ref) {
    // Describes the process of loading
    // and defining variables required for the page.
    // TODO: Implement the variable loading process.
    final doc = ref.model(MemoModel.document(viewId))..load();

    // Describes the structure of the page.
    // TODO: Implement the view.
    return Scaffold(
      appBar: AppBar(
        title: Text(doc.value?.title ?? ""),
        actions: [
          IconButton(
              onPressed: () {
                router.push(MemoEditPage.query(editId: doc.uid));
              },
              icon: const Icon(Icons.edit)),
          IconButton(
              onPressed: () async {
                await doc.delete().showIndicator(context);
                router.pop();
              },
              icon: const Icon(Icons.delete))
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(doc.value?.title ?? ""),
            subtitle: Text(doc.value?.time.value.yyyyMMddHHmm() ?? ""),
          ),
          const Divider(),
          Padding(
            padding: 16.p,
            child: Text(doc.value?.text ?? ""),
          )
        ],
      ),
    );
  }
}

/// Page for forms to add data.
@immutable
@PagePath("memo/add")
class MemoAddPage extends FormAddPageScopedWidget {
  const MemoAddPage({
    super.key,
  });

  /// Used to transition to the MemoAddPage screen.
  ///
  /// ```dart
  /// router.push(MemoAddPage.query(parameters));    // Push page to MemoAddPage.
  /// router.replace(MemoAddPage.query(parameters)); // Push page to MemoAddPage.
  /// ```
  @pageRouteQuery
  static const query = _$MemoAddPageQuery();

  @override
  FormScopedWidget build(BuildContext context, PageRef ref) => const MemoForm();
}

/// Page for forms to edit data.
@immutable
@PagePath("memo/{edit_id}/edit")
class MemoEditPage extends FormEditPageScopedWidget {
  const MemoEditPage({
    super.key,
    @PageParam("edit_id") required super.editId,
  });

  /// Used to transition to the MemoEditPage screen.
  ///
  /// ```dart
  /// router.push(MemoEditPage.query(parameters));    // Push page to MemoEditPage.
  /// router.replace(MemoEditPage.query(parameters)); // Push page to MemoEditPage.
  /// ```
  @pageRouteQuery
  static const query = _$MemoEditPageQuery();

  @override
  FormScopedWidget build(BuildContext context, PageRef ref) => const MemoForm();
}

/// Widgets for form views.
@immutable
class MemoForm extends FormScopedWidget {
  const MemoForm({super.key});

  @override
  Widget build(BuildContext context, FormRef ref) {
    // Describes the process of loading
    // and defining variables required for the page.
    //
    // You can use [ref.isAdding] or [ref.isEditing] to determine if the form is currently adding new data or editing data.
    //
    // If editing is in progress, it is possible to get the ID of the item being edited with [ref.editId].
    // TODO: Implement the variable loading process.
    final col = ref.model(MemoModel.collection())..load();
    final doc = col.firstWhereOrNull((item) => item.uid == ref.editId);
    final controller = ref.page.controller(
        MemoModel.form(doc?.value ?? const MemoModel(title: "", text: "")));

    // Describes the structure of the page.
    // TODO: Implement the view.
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit"),
        actions: [
          IconButton(
              onPressed: () async {
                if (!controller.validateAndSave()) {
                  return;
                }
                if (ref.isAdding) {
                  final doc = col.create();
                  await doc.save(controller.value).showIndicator(context);
                } else {
                  await doc!.save(controller.value).showIndicator(context);
                }
                router.pop();
              },
              icon: const Icon(Icons.save))
        ],
      ),
      body: Column(
        children: [
          const FormLabel("Title"),
          FormTextField(
            form: controller,
            onSaved: (value) => controller.value.copyWith(title: value),
            initialValue: controller.value.title,
          ),
          const FormLabel("Text"),
          Expanded(
            child: FormTextField(
              form: controller,
              onSaved: (value) => controller.value.copyWith(text: value),
              initialValue: controller.value.text,
              expands: true,
              style: const FormStyle(textAlignVertical: TextAlignVertical.top),
            ),
          ),
        ],
      ),
    );
  }
}

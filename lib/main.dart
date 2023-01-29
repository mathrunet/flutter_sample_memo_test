import 'package:flutter/material.dart';
import 'package:masamune/masamune.dart';
import 'package:memotest/models/memo.dart';
import 'package:memotest/pages/memo.dart';

part 'main.theme.dart';
part 'main.localize.dart';

/// App Title.
// TODO: Define the title of the application.
const title = "";

/// Initial page query.
// TODO: Define the initial page query of the application.
final initialQuery = MemoPage.query();

/// App Model.
///
/// By replacing this with another adapter, the data storage location can be changed.
// TODO: Change the database.
final modelAdapter = RuntimeModelAdapter(
  rawData: {
    for (var i = 0; i < 20; i++)
      "memo/${generateCode(32, seed: i)}": MemoModel(
        title: "Title ${i + 1}",
        text: "Text ${i + 1}",
      ).toJson()
  },
);

/// App Auth.
///
/// Changing to another adapter allows you to change to another authentication mechanism.
// TODO: Change the authentication.
final authAdapter = RuntimeAuthAdapter();

/// App Storage.
///
/// Changing to another adapter allows you to change to another storage mechanism.
// TODO: Change the storage.
final storageAdapter = LocalStorageAdapter();

/// App Functions.
///
/// Changing to another adapter allows you to change to another functions mechanism.
// TODO: Change the functions.
final functionsAdapter = RuntimeFunctionsAdapter();

/// App Theme.
///
/// ```dart
/// theme.color.primary   // Primary color.
/// theme.text.bodyMedium // Medium body text style.
/// theme.asset.xxx       // xxx image.
/// theme.font.xxx        // xxx font.
/// ```
@appTheme
final theme = AppThemeData(
  // TODO: Set the design.
  primary: Colors.blue,
  secondary: Colors.cyan,
  onPrimary: Colors.white,
  onSecondary: Colors.white,
);

/// App Router.
///
/// ```dart
/// router.push(Page.query());  // Push page to Page.
/// router.pop();               // Pop page.
/// ```
final router = AppRouter(
  // TODO: Please configure the initial routing and redirection settings.
  boot: null,
  initialQuery: initialQuery,
  redirect: [],
  pages: [
    // TODO: Add the page query to be used for routing.
  ],
);

/// App Localization.
///
/// ```dart
/// l().xxx  // Localization for xxx.
/// ```
final l = AppLocalize();

// TODO: Set the Google Spreadsheet URL for the translation.
@GoogleSpreadSheetLocalize(
  "https://docs.google.com/spreadsheets/d/1bw7IXEr7BGkZ4U6on0OuF7HQkTMgDSm6u5ThpBkDPeo/edit#gid=551986808",
  version: 1,
)
class AppLocalize extends _$AppLocalize {}

/// App Ref.
///
/// ```dart
/// appRef.controller(Controller.query()); // Get a controller.
/// appRef.model(Model.query());           // Get a model.
/// ```
final appRef = AppRef();

/// App authentication.
///
/// ```dart
/// appAuth.signIn(
///   EmailAndPasswordSignInAuthProvider(
///     email: email,
///     password: password,
///   ),
/// );
/// ```
final appAuth = Authentication();

/// App server functions.
///
/// It is used in conjunction with the server side.
///
/// ```dart
/// appFunction.notification(
///   title: "Notification",
///   text: "Notification text",
///   target: "Topic",
/// );
/// ```
final appFunction = Functions();

/// App Flavor.
const flavor = String.fromEnvironment("FLAVOR");

/// App.
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MasamuneApp(
      title: title,
      appRef: appRef,
      theme: theme,
      routerConfig: router,
      localize: l,
      authAdapter: authAdapter,
      modelAdapter: modelAdapter,
      storageAdapter: storageAdapter,
      functionsAdapter: functionsAdapter,
    ),
  );
}

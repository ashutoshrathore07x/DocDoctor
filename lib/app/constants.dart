const appwriteEndpoint = 'http://localhost/v1';
const appwriteProjectId = '66b5cce4002ed40ef2f1';

abstract class CollectionNames {
  static String get delta => 'delta';
  static String get deltaDocumentsPath => 'collections.$delta.documents';
  static String get pages => 'pages';
  static String get pagesDocumentsPath => 'collections.$pages.documents';
}

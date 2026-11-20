import 'package:get_it/get_it.dart';
import 'package:sqflite_note_saver/repository/note_repository.dart';

// The standard way to grab the global service locator singleton from get_it.
final getIt = GetIt.instance;

void setupLocator() {
  // Lazy: NoteRepository is created the first time it is requested.
  getIt.registerLazySingleton(() => NoteRepository());
}

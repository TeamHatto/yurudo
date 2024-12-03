import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:logger/logger.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:routine_app/repository/todo/todo.dart';
import 'package:sqflite/sqflite.dart';

class TodoDatabase {
  static const tableName = 'yurudo';

  final int _version = 3;

  final _scripts = {
    // '3': ['ALTER TABLE $tableName ADD COLUMN isDeleted INTEGER DEFAULT 0;'],
  };

  void _createTableV2(Batch batch) {
    batch.execute('DROP TABLE IF EXISTS $tableName');
    batch.execute('''
    CREATE TABLE $tableName (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT,
          span INTEGER,
          remind INTEGER,
          time INTEGER,
          count INTEGER,
          skipCount INTEGER,
          skipConsecutive INTEGER,
          categoryId INTEGER,
          completeDate TEXT,
          preExpectedDate TEXT,
          expectedDate TEXT,
          isDeleted INTEGER,
          createdAt TEXT,
          updatedAt TEXT)
''');
  }

  static Future<String> get databasePath async {
    Directory dbDir = await getApplicationSupportDirectory();
    return join(dbDir.path, '${tableName}_database.db');
  }

  static Future restoreDatabase(DownloadTask writeToFile) async {
    await deleteDatabase(await databasePath);
    await writeToFile;
    await openDatabase(await databasePath);
  }

  Future<Database> get database async {
    final Future<Database> database = openDatabase(await databasePath,
        onCreate: (db, version) async {
          var batch = db.batch();
          _createTableV2(batch);
          await batch.commit();
        },
        version: _version,
        onUpgrade: (db, oldVersion, newVersion) async {
          var batch = db.batch();
          for (var i = oldVersion + 1; i <= newVersion; i++) {
            switch (newVersion) {
              case 3:
                batch.execute(
                  'ALTER TABLE $tableName ADD COLUMN isDeleted INTEGER DEFAULT 0;',
                );
                break;
              default:
                var queries = _scripts[i.toString()];
                if (queries != null) {
                  for (String query in queries) {
                    batch.execute(query);
                  }
                }
                break;
            }
          }
          try {
            await batch.commit();
          } catch(ex) {
            Logger().e(ex);
          }
        });
    return database;
  }

  Future<void> update(Todo todo) async {
    final Database db = await database;
    db.update(
      tableName,
      todo.toMap(),
      where: 'id = ?',
      whereArgs: [todo.id],
    );
  }

  Future<void> clearPreExpectedDate() async {
    final Database db = await database;
    db.rawUpdate("UPDATE $tableName SET preExpectedDate = NULL");
  }

  Future<Todo> insert(Todo todo) async {
    final Database db = await database;
    final id = await db.insert(
      tableName,
      todo.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    return todo.copyWith(id: id);
  }

  Future<List<Todo>> getAll() async {
    final Database db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      tableName,
      where: 'isDeleted != ?',
      whereArgs: [1],
    );
    return List.generate(maps.length, (i) {
      return Todo.fromMap(maps[i]);
    });
  }

  Future<Todo> select(int id) async {
    final Database db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
    return Todo.fromMap(maps.first);
  }
}
